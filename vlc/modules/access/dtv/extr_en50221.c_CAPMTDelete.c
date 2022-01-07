
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int i_program_number; } ;
typedef TYPE_1__ en50221_capmt_info_t ;
struct TYPE_9__ {int obj; int i_selected_programs; } ;
typedef TYPE_2__ cam_t ;


 int AOT_CA_PMT ;
 int APDUSend (TYPE_2__*,int,int ,int *,size_t) ;
 int * CAPMTBuild (TYPE_2__*,int,TYPE_1__ const*,int,int,size_t*) ;
 int free (int *) ;
 int msg_Dbg (int ,char*,int ,int) ;

__attribute__((used)) static void CAPMTDelete( cam_t * p_cam, int i_session_id,
                         const en50221_capmt_info_t *p_info )
{
    uint8_t *p_capmt;
    size_t i_capmt_size;

    p_cam->i_selected_programs--;
    msg_Dbg( p_cam->obj, "deleting CAPMT for SID %d on session %d",
             p_info->i_program_number, i_session_id );

    p_capmt = CAPMTBuild( p_cam, i_session_id, p_info,
                          0x5 , 0x4 ,
                          &i_capmt_size );
    if( p_capmt != ((void*)0) )
    {
        APDUSend( p_cam, i_session_id, AOT_CA_PMT, p_capmt, i_capmt_size );
        free( p_capmt );
    }
}
