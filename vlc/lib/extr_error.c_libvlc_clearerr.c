
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int context ;
 int free_error () ;
 int vlc_threadvar_set (int ,int *) ;

void libvlc_clearerr (void)
{
    free_error ();
    vlc_threadvar_set (context, ((void*)0));
}
