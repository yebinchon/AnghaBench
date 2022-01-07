
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opj_image_t ;


 int OPJ_TRUE ;
 int imagetoraw_common (int *,char const*,int ) ;

int imagetoraw(opj_image_t * image, const char *outfile)
{
    return imagetoraw_common(image, outfile, OPJ_TRUE);
}
