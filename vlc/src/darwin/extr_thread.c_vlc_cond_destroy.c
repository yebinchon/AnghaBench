
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_cond_t ;


 int EBUSY ;
 int VLC_THREAD_ASSERT (char*) ;
 int printf (char*,int) ;
 int pthread_cond_destroy (int *) ;

void vlc_cond_destroy (vlc_cond_t *p_condvar)
{
    int val = pthread_cond_destroy (p_condvar);
    if (val != 0) {

        printf("pthread_cond_destroy returned %i\n", val);


        if (val == EBUSY)
            return;
    }

    VLC_THREAD_ASSERT ("destroying condition");
}
