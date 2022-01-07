
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_name; } ;
typedef int DIR ;


 int fprintf (int ,char*,char*) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 int stderr ;
 scalar_t__ strcmp (char*,int ) ;

int get_num_images(char *imgdirpath)
{
    DIR *dir;
    struct dirent* content;
    int num_images = 0;



    dir = opendir(imgdirpath);
    if (!dir) {
        fprintf(stderr, "Could not open Folder %s\n", imgdirpath);
        return 0;
    }

    while ((content = readdir(dir)) != ((void*)0)) {
        if (strcmp(".", content->d_name) == 0 || strcmp("..", content->d_name) == 0) {
            continue;
        }
        num_images++;
    }
    return num_images;
}
