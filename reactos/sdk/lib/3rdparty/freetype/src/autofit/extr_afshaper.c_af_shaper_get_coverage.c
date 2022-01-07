
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FT_UShort ;
typedef int FT_Error ;
typedef int * FT_Bool ;
typedef int * AF_StyleClass ;
typedef int * AF_FaceGlobals ;


 int FT_Err_Ok ;
 int FT_UNUSED (int *) ;

FT_Error
  af_shaper_get_coverage( AF_FaceGlobals globals,
                          AF_StyleClass style_class,
                          FT_UShort* gstyles,
                          FT_Bool default_script )
  {
    FT_UNUSED( globals );
    FT_UNUSED( style_class );
    FT_UNUSED( gstyles );
    FT_UNUSED( default_script );

    return FT_Err_Ok;
  }
