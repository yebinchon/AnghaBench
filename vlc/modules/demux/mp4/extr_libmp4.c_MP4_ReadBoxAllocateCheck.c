
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int stream_t ;
struct TYPE_7__ {scalar_t__ i_size; scalar_t__ i_pos; struct TYPE_7__* p_father; } ;
typedef TYPE_1__ MP4_Box_t ;


 int MP4_PeekBoxHeader (int *,TYPE_1__*) ;
 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__*) ;
 int msg_Dbg (int *,char*) ;
 int msg_Warn (int *,char*) ;

__attribute__((used)) static MP4_Box_t *MP4_ReadBoxAllocateCheck( stream_t *p_stream, MP4_Box_t *p_father )
{
    MP4_Box_t *p_box = calloc( 1, sizeof( MP4_Box_t ) );
    if( p_box == ((void*)0) )
        return ((void*)0);

    if( !MP4_PeekBoxHeader( p_stream, p_box ) )
    {
        msg_Warn( p_stream, "cannot read one box" );
        free( p_box );
        return ((void*)0);
    }

    if( p_father && p_father->i_size > 0 &&
        p_father->i_pos + p_father->i_size < p_box->i_pos + p_box->i_size )
    {
        msg_Dbg( p_stream, "out of bound child" );
        free( p_box );
        return ((void*)0);
    }

    if( !p_box->i_size )
    {
        msg_Dbg( p_stream, "found an empty box (null size)" );
        free( p_box );
        return ((void*)0);
    }
    p_box->p_father = p_father;

    return p_box;
}
