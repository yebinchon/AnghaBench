
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int stream_t ;
struct TYPE_6__ {int i_shortsize; struct TYPE_6__* p_next; scalar_t__ i_size; struct TYPE_6__* p_first; } ;
typedef TYPE_1__ MP4_Box_t ;


 int const ATOM_moof ;
 int const ATOM_moov ;
 int ATOM_root ;
 int MP4_BoxFree (TYPE_1__*) ;
 TYPE_1__* MP4_BoxNew (int ) ;
 int MP4_ReadBoxContainerChildren (int *,TYPE_1__*,int const*) ;
 scalar_t__ unlikely (int ) ;

MP4_Box_t *MP4_BoxGetNextChunk( stream_t *s )
{

    MP4_Box_t *p_fakeroot;
    MP4_Box_t *p_tmp_box;

    p_fakeroot = MP4_BoxNew( ATOM_root );
    if( unlikely( p_fakeroot == ((void*)0) ) )
        return ((void*)0);
    p_fakeroot->i_shortsize = 1;

    const uint32_t stoplist[] = { ATOM_moov, ATOM_moof, 0 };
    MP4_ReadBoxContainerChildren( s, p_fakeroot, stoplist );

    p_tmp_box = p_fakeroot->p_first;
    if( p_tmp_box == ((void*)0) )
    {
        MP4_BoxFree( p_fakeroot );
        return ((void*)0);
    }
    else while( p_tmp_box )
    {
        p_fakeroot->i_size += p_tmp_box->i_size;
        p_tmp_box = p_tmp_box->p_next;
    }

    return p_fakeroot;
}
