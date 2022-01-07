
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int stream_t ;
struct TYPE_10__ {int i_reserved2; int i_reserved1; int i_sub_object_count; int * p_last; int * p_first; } ;
struct TYPE_9__ {TYPE_2__ header; } ;
typedef TYPE_1__ asf_object_t ;
typedef TYPE_2__ asf_object_header_t ;


 scalar_t__ ASF_NextObject (int *,TYPE_1__*,int ) ;
 int ASF_OBJECT_COMMON_SIZE ;
 scalar_t__ ASF_ReadObject (int *,TYPE_1__*,TYPE_1__*) ;
 int GetDWLE (int const*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int msg_Dbg (int *,char*,int ,int ,int ) ;
 int vlc_stream_Peek (int *,int const**,int) ;
 int vlc_stream_Read (int *,int *,int) ;

__attribute__((used)) static int ASF_ReadObject_Header( stream_t *s, asf_object_t *p_obj )
{
    asf_object_header_t *p_hdr = &p_obj->header;
    asf_object_t *p_subobj;
    const uint8_t *p_peek;

    if( vlc_stream_Peek( s, &p_peek, 30 ) < 30 )
       return VLC_EGENERIC;

    p_hdr->i_sub_object_count = GetDWLE( p_peek + ASF_OBJECT_COMMON_SIZE );
    p_hdr->i_reserved1 = p_peek[28];
    p_hdr->i_reserved2 = p_peek[29];
    p_hdr->p_first = ((void*)0);
    p_hdr->p_last = ((void*)0);
    if( vlc_stream_Read( s, ((void*)0), 30 ) != 30 )
        return VLC_EGENERIC;


    for( ; ; )
    {
        p_subobj = malloc( sizeof( asf_object_t ) );

        if( !p_subobj || ASF_ReadObject( s, p_subobj, (asf_object_t*)p_hdr ) )
        {
            free( p_subobj );
            break;
        }
        if( ASF_NextObject( s, p_subobj, 0 ) )
            break;
    }
    return VLC_SUCCESS;
}
