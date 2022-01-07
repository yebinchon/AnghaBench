
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int picture_t ;
typedef int CVPixelBufferRef ;


 int cvpxpic_attach_common (int *,int ,int ,int *,int *) ;
 int cvpxpic_destroy_cb ;

int
cvpxpic_attach(picture_t *p_pic, CVPixelBufferRef cvpx)
{
    return cvpxpic_attach_common(p_pic, cvpx, cvpxpic_destroy_cb, ((void*)0), ((void*)0));
}
