# This file:
# https://github.com/edrx/org-eev-sympy-tests
# https://github.com/edrx/org-eev-sympy-tests/blob/main/oest.e
#     (find-fline "~/usrc/org-eev-sympy-tests/oest.e")
#                                 (find-oest "oest.e")
#
# Authors: Eduardo Ochs <eduardoochs@gmail.com>
#          Bruno Macedo 

# «.create-repo»	(to "create-repo")
# «.push»		(to "push")
# «.tmp-repo»		(to "tmp-repo")




#####
#
# create-repo
# 2021feb07
#
#####

# «create-repo»  (to ".create-repo")

 (eepitch-shell)
 (eepitch-kill)
 (eepitch-shell)

rm -Rv ~/usrc/org-eev-sympy-tests/
mkdir  ~/usrc/org-eev-sympy-tests/
cd     ~/usrc/org-eev-sympy-tests/

git init
git add README.org
git add prototipo.org
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/edrx/org-eev-sympy-tests.git
git push -u origin main




#####
#
# push
# 2021feb07
#
#####

# «push»  (to ".push")

 (eepitch-shell)
 (eepitch-kill)
 (eepitch-shell)
cd ~/usrc/org-eev-sympy-tests/
git add oest.e
git commit -m "$(date +'%Y%b%d %k:%M' | tr A-Z a-z)"
git push





#####
#
# tmp-repo
# 2021feb07
#
#####

# «tmp-repo»  (to ".tmp-repo")
# (find-git-links "https://github.com/edrx/org-eev-sympy-tests.git" "oest")

 (eepitch-shell)
 (eepitch-kill)
 (eepitch-shell)
rm -Rfv /tmp/org-eev-sympy-tests/
cd      /tmp/
git clone https://github.com/edrx/org-eev-sympy-tests.git
cd      /tmp/org-eev-sympy-tests/

export PAGER=cat
git branch --list -a
git for-each-ref
git log --oneline --graph --all -20

# (find-fline "/tmp/")
# (find-fline "/tmp/org-eev-sympy-tests/")
# (find-gitk  "/tmp/org-eev-sympy-tests/")

git pull




# (find-efunction 'org-babel-execute-src-block)
# (find-orgnode "Evaluating Code Blocks" "org-babel-execute-src-block")




# https://orgmode.org/worg/org-contrib/babel/languages/ob-doc-python.html