
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int banner () ;
 int printf (char*) ;

void showpermission(void)
{
    banner();
    printf("LOADER: You must be superuser!\n");
}
