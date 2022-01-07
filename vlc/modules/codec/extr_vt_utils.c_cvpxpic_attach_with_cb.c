
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int picture_t ;
typedef int CVPixelBufferRef ;


 int cvpxpic_attach_common (int *,int ,int ,void (*) (int ,void*,unsigned int),void*) ;
 int cvpxpic_destroy_cb ;

int cvpxpic_attach_with_cb(picture_t *p_pic, CVPixelBufferRef cvpx,
                           void (*on_released_cb)(CVPixelBufferRef, void *, unsigned),
                           void *on_released_data)
{
    return cvpxpic_attach_common(p_pic, cvpx, cvpxpic_destroy_cb, on_released_cb,
                                 on_released_data);
}
