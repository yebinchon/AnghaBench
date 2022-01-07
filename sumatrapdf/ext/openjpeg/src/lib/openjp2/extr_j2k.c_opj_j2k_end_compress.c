
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int opj_stream_private_t ;
struct TYPE_5__ {int m_procedure_list; } ;
typedef TYPE_1__ opj_j2k_t ;
typedef int opj_event_mgr_t ;
typedef int OPJ_BOOL ;


 int OPJ_FALSE ;
 int OPJ_TRUE ;
 int opj_j2k_exec (TYPE_1__*,int ,int *,int *) ;
 int opj_j2k_setup_end_compress (TYPE_1__*,int *) ;

OPJ_BOOL opj_j2k_end_compress(opj_j2k_t *p_j2k,
                              opj_stream_private_t *p_stream,
                              opj_event_mgr_t * p_manager)
{

    if (! opj_j2k_setup_end_compress(p_j2k, p_manager)) {
        return OPJ_FALSE;
    }

    if (! opj_j2k_exec(p_j2k, p_j2k->m_procedure_list, p_stream, p_manager)) {
        return OPJ_FALSE;
    }

    return OPJ_TRUE;
}
