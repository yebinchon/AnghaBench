
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dirent {int d_name; } ;
struct TYPE_3__ {int * filename; } ;
typedef TYPE_1__ dircnt_t ;
typedef int DIR ;


 int fprintf (int ,char*,...) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 int stderr ;
 scalar_t__ strcmp (char*,int ) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int load_images(dircnt_t *dirptr, char *imgdirpath)
{
    DIR *dir;
    struct dirent* content;
    int i = 0;



    dir = opendir(imgdirpath);
    if (!dir) {
        fprintf(stderr, "Could not open Folder %s\n", imgdirpath);
        return 1;
    } else {
        fprintf(stderr, "Folder opened successfully\n");
    }

    while ((content = readdir(dir)) != ((void*)0)) {
        if (strcmp(".", content->d_name) == 0 || strcmp("..", content->d_name) == 0) {
            continue;
        }

        strcpy(dirptr->filename[i], content->d_name);
        i++;
    }
    return 0;
}
