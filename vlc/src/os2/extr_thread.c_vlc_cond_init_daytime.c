
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_cond_t ;


 int vlc_cond_init (int *) ;

void vlc_cond_init_daytime (vlc_cond_t *p_condvar)
{
    vlc_cond_init (p_condvar);
}
