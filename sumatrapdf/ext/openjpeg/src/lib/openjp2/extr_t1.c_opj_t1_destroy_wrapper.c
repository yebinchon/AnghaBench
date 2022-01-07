
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opj_t1_t ;


 int opj_t1_destroy (int *) ;

__attribute__((used)) static void opj_t1_destroy_wrapper(void* t1)
{
    opj_t1_destroy((opj_t1_t*) t1);
}
