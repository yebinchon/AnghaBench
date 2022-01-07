
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_9__ {scalar_t__ i_type; } ;
struct TYPE_8__ {scalar_t__ i_chunk_fourcc; TYPE_2__* p_father; union avi_chunk_u* p_next; union avi_chunk_u* p_first; } ;
union avi_chunk_u {TYPE_4__ list; TYPE_3__ common; } ;
typedef int stream_t ;
typedef union avi_chunk_u avi_chunk_t ;
struct TYPE_10__ {int i_chunk_size; int i_type; int * p_first; int * p_next; int * p_father; int i_chunk_fourcc; scalar_t__ i_chunk_pos; } ;
typedef TYPE_5__ avi_chunk_list_t ;
struct TYPE_6__ {scalar_t__ i_chunk_pos; int i_chunk_size; } ;
struct TYPE_7__ {TYPE_1__ common; } ;


 scalar_t__ AVIFOURCC_AVI ;
 int AVIFOURCC_LIST ;
 scalar_t__ AVIFOURCC_RIFF ;
 int AVI_ChunkClean (int *,union avi_chunk_u*) ;
 int AVI_ChunkDumpDebug_level (int *,union avi_chunk_u*,int ) ;
 scalar_t__ AVI_ChunkRead (int *,union avi_chunk_u*,union avi_chunk_u*) ;
 int STREAM_CAN_SEEK ;
 int UINT64_MAX ;
 int VLC_EGENERIC ;
 int VLC_FOURCC (char,char,char,char) ;
 scalar_t__ VLC_SUCCESS ;
 scalar_t__ __EVEN (int ) ;
 union avi_chunk_u* calloc (int,int) ;
 int free (union avi_chunk_u*) ;
 int stream_Size (int *) ;
 int vlc_stream_Control (int *,int ,int*) ;
 scalar_t__ vlc_stream_Tell (int *) ;

int AVI_ChunkReadRoot( stream_t *s, avi_chunk_t *p_root )
{
    avi_chunk_list_t *p_list = (avi_chunk_list_t*)p_root;
    avi_chunk_t *p_chk;
    bool b_seekable;

    vlc_stream_Control( s, STREAM_CAN_SEEK, &b_seekable );

    p_list->i_chunk_pos = 0;
    p_list->i_chunk_size = ((UINT64_MAX - 12) >> 1) << 1;
    p_list->i_chunk_fourcc = AVIFOURCC_LIST;
    p_list->p_father = ((void*)0);
    p_list->p_next = ((void*)0);
    p_list->p_first = ((void*)0);

    p_list->i_type = VLC_FOURCC( 'r', 'o', 'o', 't' );

    union avi_chunk_u **pp_append = &p_root->common.p_first;
    for( ; ; )
    {
        p_chk = calloc( 1, sizeof( avi_chunk_t ) );
        if( !p_chk )
            return VLC_EGENERIC;

        if( AVI_ChunkRead( s, p_chk, p_root ) != VLC_SUCCESS )
        {
            AVI_ChunkClean( s, p_chk );
            free( p_chk );
            break;
        }

        *pp_append = p_chk;
        while( *pp_append )
            pp_append = &((*pp_append)->common.p_next);

        if( vlc_stream_Tell( s ) >=
                 p_chk->common.p_father->common.i_chunk_pos +
                 __EVEN( p_chk->common.p_father->common.i_chunk_size ) )
        {
            break;
        }


        if( p_chk->common.i_chunk_fourcc == AVIFOURCC_RIFF &&
            p_chk->list.i_type == AVIFOURCC_AVI && !b_seekable )
        {
            break;
        }
    }

    p_list->i_chunk_size = stream_Size( s );

    AVI_ChunkDumpDebug_level( (vlc_object_t*)s, p_root, 0 );
    return VLC_SUCCESS;
}
