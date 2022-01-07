
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int subpicture_t ;
typedef int sout_stream_t ;
struct TYPE_3__ {scalar_t__ p_spu; } ;
typedef TYPE_1__ sout_stream_id_sys_t ;


 scalar_t__ spu_Create (int *,int *) ;
 int spu_PutSubpicture (scalar_t__,int *) ;
 int subpicture_Delete (int *) ;

void transcode_video_push_spu( sout_stream_t *p_stream, sout_stream_id_sys_t *id,
                               subpicture_t *p_subpicture )
{
    if( !id->p_spu )
        id->p_spu = spu_Create( p_stream, ((void*)0) );
    if( !id->p_spu )
        subpicture_Delete( p_subpicture );
    else
        spu_PutSubpicture( id->p_spu, p_subpicture );
}
