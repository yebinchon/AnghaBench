
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;
 int read (int,void*,int) ;

__attribute__((used)) static void tlb_read(int fd, void *buf, int count)
{
    if(read(fd, buf, count) < count)
        error("error while reading importlib.\n");
}
