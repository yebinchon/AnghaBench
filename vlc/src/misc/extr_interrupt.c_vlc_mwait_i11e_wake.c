
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vlc_cond_signal (void*) ;

__attribute__((used)) static void vlc_mwait_i11e_wake(void *opaque)
{
    vlc_cond_signal(opaque);
}
