
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dlclose (int *) ;
 int * v4l2_handle ;

__attribute__((used)) __attribute__((destructor))
static void v4l2_lib_unload (void)
{
    if (v4l2_handle != ((void*)0))
        dlclose (v4l2_handle);
}
