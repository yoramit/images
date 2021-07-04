# Git Workshop
Lab 4: Merging and Rebasing

---

## Exercise 1 (Merging)

##### Basic Merge

 - Go to the following page:
```
http://git-school.github.io/visualizing-git
```

 - Create and checkout a new branch (feature1):
```
$ git checkout -b feature1
```

 - Create 2 commits in the feature1 branch:
```
$ git commit
$ git commit
```

 - Move to the master branch:
```
$ git checkout master
```

 - Create 2 commits in the master branch:
```
$ git commit
$ git commit
```

 - Merge the feature1 branch into the master branch:
```
$ git merge feature1
```

##### Fast-Forward Merge

 - Create and checkout a new branch (feature2):
```
$ git checkout -b feature2
```

 - Create 2 commits in the feature2 branch:
```
$ git commit
$ git commit
```

 - Move to the master branch:
```
$ git checkout master
```

 - Merge the feature2 branch into the master branch:
```
$ git merge feature2
```

##### Merge with --no-ff

 - Create and checkout a new branch (feature3):
```
$ git checkout -b feature3
```

 - Create 2 commits in the feature2 branch:
```
$ git commit
$ git commit
```

 - Move to the master branch:
```
$ git checkout master
```

 - Merge the feature3 branch into the master branch with --no-ff flag:
```
$ git merge feature3 --no-ff
```

---

## Exercise 2 (Rebasing)

 - Browse to the site (or use the command "clear"):
```
http://git-school.github.io/visualizing-git
```

 - Create 2 commits in the master branch:
```
$ git commit
$ git commit
```

 - Move to the first commit:
```
$ git checkout HEAD~2
```

 - Create and checkout a new branch (feature):
```
$ git checkout -b feature
```

 - Create 2 commits in the feature branch:
```
$ git commit
$ git commit
```

 - rebase the feature branch into the master branch:
```
$ git rebase master
```

---

## Exercise 3 (Conflicts)

 - Use the following command to clone a repo and checkout the feature branch in a single step:
```
$ git clone https://oauth2:gkLjhh5W4te-cJngRBxB@gitlab.com/sela-git-basic-workshop/lab-04.git --branch feature
```

 - Move to the repository working area:
```
$ cd lab-04
```

 - Inspect the repository history:
```
$ git log --oneline --graph --decorate --branches
```

 - Run the command below and lets see what happen:
```
$ gitk --all
```

 - Move to the master branch:
```
$ git checkout master
```

 - Merge the feature branch into the master branch:
```
$ git merge feature
```

 - A conflict will occur, run the following to cancel the merge:
```
$ git merge --abort
```

 - Merge the feature branch into the master branch:
```
$ git merge feature
```

 - A conflict will occur, when you open the file you will see the following:
```
    function Create-BlueMessage
    {
        param
        (
            [Parameter(Mandatory=$true)]
            $Message
        )

    
        Write-Host $Message -ForegroundColor Blue
    }

    <<<<<<< HEAD
    Create-GreenMessage -Message "My master Message"
    Create-GreenMessage -Message "Master Message!"
    =======
    Create-BlueMessage -Message "My feature Message"
    Create-BlueMessage -Message "Feature Message!"
    >>>>>>> feature
```

 - Fix the conflict leaving the file like this::
```
    function Create-GreenMessage
    {
        param
        (
            [Parameter(Mandatory=$true)]
            $Message
        )

        Write-Host $Message -ForegroundColor Blue
    }
    
    Create-BlueMessage -Message "My master Message"
    Create-BlueMessage -Message "Master Message!"
    Create-BlueMessage -Message "Feature Message!"
```

 - Add the changes to the index:
```
$ git add demo-script.ps1
```

 - Commit the changes to finish the merge:
```
$ git commit -m "merge feature into master"
```