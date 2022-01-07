
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FR_OK ;
 int f_mount (int *,char*,int ) ;
 int g_Filesystem ;
 int isMounted ;

int need_mount(void)
{
    int r;

    if (isMounted)
        return FR_OK;

    r = f_mount(&g_Filesystem, "0:", 0);
    if (r)
        return r;

    isMounted = 1;
    return FR_OK;
}
