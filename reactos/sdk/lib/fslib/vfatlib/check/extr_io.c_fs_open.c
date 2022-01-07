
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 int O_RDWR ;
 int changes ;
 scalar_t__ did_change ;
 int exit (int) ;
 int fd ;
 int * last ;
 int open (char*,int ) ;
 int perror (char*) ;

void fs_open(char *path, int rw)
{
    if ((fd = open(path, rw ? O_RDWR : O_RDONLY)) < 0) {
 perror("open");
 exit(6);
    }
    changes = last = ((void*)0);
    did_change = 0;
}
