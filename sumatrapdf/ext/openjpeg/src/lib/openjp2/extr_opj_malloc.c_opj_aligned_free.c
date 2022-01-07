
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _aligned_free (void*) ;
 int free (void*) ;

void opj_aligned_free(void* ptr)
{






    if (ptr != ((void*)0)) {
        free(((void**) ptr)[-1]);
    }

}
