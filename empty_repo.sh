#!/bin/bash
git stash                                                         # Stash changes if any
git symbolic-ref HEAD refs/heads/${awslabs}                    # Change head to a new, non-existing ref
git rm -rf .                                                      # Delete files from version control and working directory
rm -r .                                                           # Delete files from file system
git commit --allow-empty -m "Created new branch ${awslabs}"    # Commit changes in the new branch