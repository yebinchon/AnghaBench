
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int stream_t ;
struct TYPE_9__ {scalar_t__ i_size; scalar_t__ i_pos; } ;
typedef TYPE_1__ MP4_Box_t ;


 int MP4_BoxFree (TYPE_1__*) ;
 scalar_t__ MP4_Box_Read_Specific (int *,TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* MP4_ReadBoxAllocateCheck (int *,TYPE_1__*) ;
 int MP4_Seek (int *,scalar_t__) ;
 scalar_t__ VLC_SUCCESS ;

__attribute__((used)) static MP4_Box_t *MP4_ReadBox( stream_t *p_stream, MP4_Box_t *p_father )
{
    MP4_Box_t *p_box = MP4_ReadBoxAllocateCheck( p_stream, p_father );
    if( !p_box )
        return ((void*)0);

    if( MP4_Box_Read_Specific( p_stream, p_box, p_father ) != VLC_SUCCESS )
    {
        uint64_t i_end = p_box->i_pos + p_box->i_size;
        MP4_BoxFree( p_box );
        MP4_Seek( p_stream, i_end );
        return ((void*)0);
    }
    return p_box;
}
