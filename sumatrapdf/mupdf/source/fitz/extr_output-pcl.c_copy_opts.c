
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_pcl_options ;



__attribute__((used)) static void copy_opts(fz_pcl_options *dst, const fz_pcl_options *src)
{
 if (dst)
  *dst = *src;
}
