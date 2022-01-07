
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int opj_stream_private_t ;
struct TYPE_3__ {int j2k; } ;
typedef TYPE_1__ opj_jp2_t ;
typedef int opj_event_mgr_t ;
typedef int OPJ_BOOL ;


 int opj_j2k_encode (int ,int *,int *) ;

OPJ_BOOL opj_jp2_encode(opj_jp2_t *jp2,
                        opj_stream_private_t *stream,
                        opj_event_mgr_t * p_manager)
{
    return opj_j2k_encode(jp2->j2k, stream, p_manager);
}
