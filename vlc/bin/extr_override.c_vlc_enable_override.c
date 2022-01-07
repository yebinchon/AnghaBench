
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int override ;
 int pthread_atfork (int *,int *,int ) ;
 int vlc_reset_override ;

void vlc_enable_override (void)
{
    override = 1;
    pthread_atfork (((void*)0), ((void*)0), vlc_reset_override);
}
