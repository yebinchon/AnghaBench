
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int picture_t ;
typedef int decoder_t ;
struct TYPE_3__ {int * allocator_data; } ;
typedef TYPE_1__ Dav1dPicture ;


 int VLC_UNUSED (int *) ;
 int picture_Release (int *) ;

__attribute__((used)) static void FreePicture(Dav1dPicture *data, void *cookie)
{
    picture_t *pic = data->allocator_data;
    decoder_t *dec = cookie;
    VLC_UNUSED(dec);
    picture_Release(pic);
}
