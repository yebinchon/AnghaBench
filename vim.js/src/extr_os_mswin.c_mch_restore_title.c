
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * g_szOrigTitle ;
 int mch_settitle (int *,int *) ;

void
mch_restore_title(
    int which)
{

    mch_settitle((which & 1) ? g_szOrigTitle : ((void*)0), ((void*)0));

}
