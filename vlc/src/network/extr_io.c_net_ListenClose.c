
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int*) ;
 int net_Close (int) ;

void net_ListenClose(int *fds)
{
    if (fds != ((void*)0))
    {
        for (int *p = fds; *p != -1; p++)
            net_Close(*p);

        free(fds);
    }
}
