
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opj_thread_t ;
typedef int opj_thread_fn ;



opj_thread_t* opj_thread_create(opj_thread_fn thread_fn, void* user_data)
{
    (void) thread_fn;
    (void) user_data;
    return ((void*)0);
}
