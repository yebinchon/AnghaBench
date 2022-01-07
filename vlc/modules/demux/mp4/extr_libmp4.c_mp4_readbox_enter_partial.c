
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int stream_t ;
struct TYPE_7__ {scalar_t__ i_size; } ;
typedef TYPE_1__ MP4_Box_t ;


 int * mp4_readbox_enter_common (int *,TYPE_1__*,size_t,void (*) (TYPE_1__*),scalar_t__) ;

__attribute__((used)) static uint8_t *mp4_readbox_enter_partial( stream_t *s, MP4_Box_t *box,
                                           size_t typesize,
                                           void (*release)( MP4_Box_t * ),
                                           uint64_t *restrict readsize )
{
    if( (uint64_t)*readsize > box->i_size )
        *readsize = box->i_size;

    return mp4_readbox_enter_common( s, box, typesize, release, *readsize );
}
