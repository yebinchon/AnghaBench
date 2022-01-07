
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
fz_default_image_scale(void *arg, int dst_w, int dst_h, int src_w, int src_h)
{
 (void)arg;
 return dst_w < src_w && dst_h < src_h;
}
