
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int stream_t ;
struct TYPE_13__ {TYPE_1__* p_cmov; } ;
struct TYPE_14__ {int i_shortsize; struct TYPE_14__* p_first; struct TYPE_14__* p_next; struct TYPE_14__* p_father; TYPE_2__ data; int i_type; scalar_t__ i_size; } ;
struct TYPE_12__ {TYPE_3__* p_moov; } ;
typedef TYPE_3__ MP4_Box_t ;


 int const ATOM_mdat ;
 int const ATOM_moof ;
 int const ATOM_moov ;
 int ATOM_root ;
 int const ATOM_sidx ;
 int ATOM_skip ;
 scalar_t__ MP4_BoxCount (TYPE_3__*,char*) ;
 int MP4_BoxFree (TYPE_3__*) ;
 TYPE_3__* MP4_BoxGet (TYPE_3__*,char*) ;
 TYPE_3__* MP4_BoxNew (int ) ;
 int MP4_ReadBoxContainerChildren (int *,TYPE_3__*,int const*) ;
 int MP4_ReadBoxContainerChildrenIndexed (int *,TYPE_3__*,int const*,int const*,int) ;
 int MP4_Seek (int *,int ) ;
 int STREAM_CAN_SEEK ;
 scalar_t__ VLC_SUCCESS ;
 int msg_Err (int *,char*) ;
 scalar_t__ stream_Size (int *) ;
 scalar_t__ vlc_stream_Control (int *,int ,int*) ;
 scalar_t__ vlc_stream_GetSize (int *,scalar_t__*) ;
 scalar_t__ vlc_stream_Tell (int *) ;

MP4_Box_t *MP4_BoxGetRoot( stream_t *p_stream )
{
    int i_result;

    MP4_Box_t *p_vroot = MP4_BoxNew( ATOM_root );
    if( p_vroot == ((void*)0) )
        return ((void*)0);

    p_vroot->i_shortsize = 1;
    uint64_t i_size;
    if( vlc_stream_GetSize( p_stream, &i_size ) == 0 )
        p_vroot->i_size = i_size;


    {
        const uint32_t stoplist[] = { ATOM_moov, ATOM_mdat, 0 };
        i_result = MP4_ReadBoxContainerChildren( p_stream, p_vroot, stoplist );
    }


    if( i_result && !MP4_BoxGet( p_vroot, "moov" ) )
    {
        bool b_seekable;
        if( vlc_stream_Control( p_stream, STREAM_CAN_SEEK, &b_seekable ) != VLC_SUCCESS || !b_seekable )
        {
            msg_Err( p_stream, "no moov before mdat and the stream is not seekable" );
            goto error;
        }


        const uint32_t stoplist[] = { ATOM_moov, 0 };
        i_result = MP4_ReadBoxContainerChildren( p_stream, p_vroot, stoplist );
    }

    if( !i_result )
        return p_vroot;


    if( MP4_BoxCount( p_vroot, "moov/mvex" ) > 0 )
    {

        const uint32_t stoplist[] = { ATOM_sidx, 0 };
        const uint32_t excludelist[] = { ATOM_moof, ATOM_mdat, 0 };
        MP4_ReadBoxContainerChildrenIndexed( p_stream, p_vroot, stoplist, excludelist, 0 );
        return p_vroot;
    }

    if( vlc_stream_Tell( p_stream ) + 8 < (uint64_t) stream_Size( p_stream ) )
    {

        i_result = MP4_ReadBoxContainerChildren( p_stream, p_vroot, ((void*)0) );

        if( !i_result )
            goto error;
    }

    MP4_Box_t *p_moov;
    MP4_Box_t *p_cmov;



    if( ( ( p_moov = MP4_BoxGet( p_vroot, "moov" ) ) &&
          ( p_cmov = MP4_BoxGet( p_vroot, "moov/cmov" ) ) ) ||
        ( ( p_moov = MP4_BoxGet( p_vroot, "foov" ) ) &&
          ( p_cmov = MP4_BoxGet( p_vroot, "foov/cmov" ) ) ) )
    {

        p_moov->i_type = ATOM_skip;


        p_moov = p_cmov->data.p_cmov->p_moov;
        p_cmov->data.p_cmov->p_moov = ((void*)0);


        p_moov->p_father = p_vroot;


        p_moov->p_next = p_vroot->p_first;
        p_vroot->p_first = p_moov;
    }

    return p_vroot;

error:
    MP4_BoxFree( p_vroot );
    MP4_Seek( p_stream, 0 );
    return ((void*)0);
}
