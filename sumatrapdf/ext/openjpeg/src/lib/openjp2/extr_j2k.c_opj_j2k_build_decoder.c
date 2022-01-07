
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opj_stream_private_t ;
typedef int opj_j2k_t ;
typedef int opj_event_mgr_t ;
typedef int OPJ_BOOL ;


 int OPJ_TRUE ;

__attribute__((used)) static OPJ_BOOL opj_j2k_build_decoder(opj_j2k_t * p_j2k,
                                      opj_stream_private_t *p_stream,
                                      opj_event_mgr_t * p_manager)
{


    (void)p_j2k;
    (void)p_stream;
    (void)p_manager;
    return OPJ_TRUE;
}
