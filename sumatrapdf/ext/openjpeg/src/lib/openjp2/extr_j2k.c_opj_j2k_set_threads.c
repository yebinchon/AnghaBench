
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * m_tp; } ;
typedef TYPE_1__ opj_j2k_t ;
typedef scalar_t__ OPJ_UINT32 ;
typedef int OPJ_BOOL ;


 scalar_t__ INT_MAX ;
 int OPJ_FALSE ;
 int OPJ_TRUE ;
 scalar_t__ opj_has_thread_support () ;
 void* opj_thread_pool_create (int) ;
 int opj_thread_pool_destroy (int *) ;

OPJ_BOOL opj_j2k_set_threads(opj_j2k_t *j2k, OPJ_UINT32 num_threads)
{
    if (opj_has_thread_support()) {
        opj_thread_pool_destroy(j2k->m_tp);
        j2k->m_tp = ((void*)0);
        if (num_threads <= (OPJ_UINT32)INT_MAX) {
            j2k->m_tp = opj_thread_pool_create((int)num_threads);
        }
        if (j2k->m_tp == ((void*)0)) {
            j2k->m_tp = opj_thread_pool_create(0);
            return OPJ_FALSE;
        }
        return OPJ_TRUE;
    }
    return OPJ_FALSE;
}
