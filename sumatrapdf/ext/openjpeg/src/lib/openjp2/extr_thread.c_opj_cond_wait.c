
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opj_mutex_t ;
typedef int opj_cond_t ;



void opj_cond_wait(opj_cond_t* cond, opj_mutex_t* mutex)
{
    (void) cond;
    (void) mutex;
}
