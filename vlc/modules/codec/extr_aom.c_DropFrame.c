
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aom_image {int dummy; } ;
typedef struct aom_image const decoder_t ;


 int VLC_UNUSED (struct aom_image const*) ;

__attribute__((used)) static void DropFrame(decoder_t *dec, const struct aom_image *img)
{
    VLC_UNUSED(dec);
    VLC_UNUSED(img);

}
