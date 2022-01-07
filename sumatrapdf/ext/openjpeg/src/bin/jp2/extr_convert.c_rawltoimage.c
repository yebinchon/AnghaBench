
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int raw_cparameters_t ;
typedef int opj_image_t ;
typedef int opj_cparameters_t ;


 int OPJ_FALSE ;
 int * rawtoimage_common (char const*,int *,int *,int ) ;

opj_image_t* rawltoimage(const char *filename, opj_cparameters_t *parameters,
                         raw_cparameters_t *raw_cp)
{
    return rawtoimage_common(filename, parameters, raw_cp, OPJ_FALSE);
}
