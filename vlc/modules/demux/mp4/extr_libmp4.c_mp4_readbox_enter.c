
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int stream_t ;
struct TYPE_7__ {int i_size; } ;
typedef TYPE_1__ MP4_Box_t ;


 int * mp4_readbox_enter_common (int *,TYPE_1__*,size_t,void (*) (TYPE_1__*),int ) ;

__attribute__((used)) static uint8_t *mp4_readbox_enter( stream_t *s, MP4_Box_t *box,
                                   size_t typesize,
                                   void (*release)( MP4_Box_t * ) )
{
    uint64_t readsize = box->i_size;
    return mp4_readbox_enter_common( s, box, typesize, release, readsize );
}
