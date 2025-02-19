
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int system_ids_t ;
struct TYPE_10__ {size_t i_es_count; TYPE_3__* p_es; int i_program_number; int i_program_descriptors; int p_program_descriptors; } ;
typedef TYPE_2__ en50221_capmt_info_t ;
struct TYPE_11__ {int i_descriptors; int p_descriptors; } ;
typedef TYPE_3__ en50221_capmt_es_info_t ;
struct TYPE_12__ {int obj; TYPE_1__* p_sessions; } ;
typedef TYPE_4__ cam_t ;
struct TYPE_9__ {scalar_t__ p_sys; } ;


 int * CAPMTES (TYPE_3__ const*,int *,size_t,size_t,int ,int *) ;
 int * CAPMTHeader (TYPE_2__ const*,int *,int ,size_t,int ) ;
 size_t GetCADSize (int *,int ,int ) ;
 int msg_Warn (int ,char*,int ,int) ;

__attribute__((used)) static uint8_t *CAPMTBuild( cam_t * p_cam, int i_session_id,
                            const en50221_capmt_info_t *p_info,
                            uint8_t i_list_mgt,
                            uint8_t i_cmd, size_t *restrict pi_capmt_size )
{
    system_ids_t *p_ids =
        (system_ids_t *)p_cam->p_sessions[i_session_id - 1].p_sys;
    size_t i_cad_size, i_cad_program_size;
    uint8_t *p_capmt;

    i_cad_size = i_cad_program_size = GetCADSize( p_ids,
                                                  p_info->p_program_descriptors,
                                                  p_info->i_program_descriptors );
    for( size_t i=0; i < p_info->i_es_count; i++ )
    {
        const en50221_capmt_es_info_t *p_es = &p_info->p_es[i];
        i_cad_size += GetCADSize( p_ids, p_es->p_descriptors, p_es->i_descriptors );
    }

    if ( !i_cad_size )
    {
        msg_Warn( p_cam->obj,
                  "no compatible scrambling system for SID %d on session %d",
                  p_info->i_program_number, i_session_id );
        return ((void*)0);
    }

    p_capmt = CAPMTHeader( p_info, p_ids, i_list_mgt,
                           i_cad_program_size, i_cmd );

    if ( i_cad_program_size )
        *pi_capmt_size = 7 + i_cad_program_size;
    else
        *pi_capmt_size = 6;

    for( size_t i=0; i < p_info->i_es_count; i++ )
    {
        const en50221_capmt_es_info_t *p_es = &p_info->p_es[i];
        i_cad_size = GetCADSize( p_ids, p_es->p_descriptors, p_es->i_descriptors );

        if ( i_cad_size || i_cad_program_size )
        {
            p_capmt = CAPMTES( p_es, p_ids, *pi_capmt_size, i_cad_size,
                               i_cmd, p_capmt );
            if ( i_cad_size )
                *pi_capmt_size += 6 + i_cad_size;
            else
                *pi_capmt_size += 5;
        }
    }

    return p_capmt;
}
