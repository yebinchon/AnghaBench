
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * FT_Service_MultiMasters ;
typedef int FT_Face ;
typedef int FT_Error ;


 int FT_ERR (int ) ;
 int FT_Err_Ok ;
 int FT_FACE_LOOKUP_SERVICE (int ,int *,int ) ;
 scalar_t__ FT_HAS_MULTIPLE_MASTERS (int ) ;
 int FT_THROW (int ) ;
 int Invalid_Argument ;
 int Invalid_Face_Handle ;
 int MULTI_MASTERS ;

__attribute__((used)) static FT_Error
  ft_face_get_mm_service( FT_Face face,
                          FT_Service_MultiMasters *aservice )
  {
    FT_Error error;


    *aservice = ((void*)0);

    if ( !face )
      return FT_THROW( Invalid_Face_Handle );

    error = FT_ERR( Invalid_Argument );

    if ( FT_HAS_MULTIPLE_MASTERS( face ) )
    {
      FT_FACE_LOOKUP_SERVICE( face,
                              *aservice,
                              MULTI_MASTERS );

      if ( *aservice )
        error = FT_Err_Ok;
    }

    return error;
  }
