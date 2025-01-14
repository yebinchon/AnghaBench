
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int stream_t ;
typedef scalar_t__ int64_t ;
struct TYPE_9__ {scalar_t__ i_object_size; scalar_t__ i_object_pos; TYPE_2__* p_father; } ;
struct TYPE_10__ {TYPE_3__ common; } ;
typedef TYPE_4__ asf_object_t ;
struct TYPE_7__ {scalar_t__ i_object_size; scalar_t__ i_object_pos; } ;
struct TYPE_8__ {TYPE_1__ common; } ;


 scalar_t__ ASF_OBJECT_COMMON_SIZE ;
 scalar_t__ ASF_ReadObjectCommon (int *,TYPE_4__*) ;
 scalar_t__ UINT64_MAX ;
 int VLC_EGENERIC ;
 int vlc_stream_Seek (int *,scalar_t__) ;
 scalar_t__ vlc_stream_Tell (int *) ;

__attribute__((used)) static int ASF_NextObject( stream_t *s, asf_object_t *p_obj, uint64_t i_boundary )
{
    asf_object_t obj;

    int64_t i_pos = vlc_stream_Tell( s );
    if ( i_boundary && i_pos >= 0 && (uint64_t) i_pos >= i_boundary )
    {
        return VLC_EGENERIC;
    }

    if( p_obj == ((void*)0) )
    {
        if( ASF_ReadObjectCommon( s, &obj ) )
            return VLC_EGENERIC;

        p_obj = &obj;
    }

    if( p_obj->common.i_object_size <= 0 )
        return VLC_EGENERIC;

    if( ( UINT64_MAX - p_obj->common.i_object_pos ) < p_obj->common.i_object_size )
        return VLC_EGENERIC;

    if( p_obj->common.p_father &&
        p_obj->common.p_father->common.i_object_size != 0 )
    {
        if( p_obj->common.p_father->common.i_object_pos +
            p_obj->common.p_father->common.i_object_size <
                p_obj->common.i_object_pos + p_obj->common.i_object_size + ASF_OBJECT_COMMON_SIZE )

        {
            return VLC_EGENERIC;
        }

    }

    return vlc_stream_Seek( s, p_obj->common.i_object_pos +
                        p_obj->common.i_object_size );
}
