
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ family_name; } ;
typedef int TT_Face ;
typedef TYPE_1__* FT_Face ;
typedef int FT_Bool ;


 int FALSE ;
 int TRUE ;
 scalar_t__ tt_check_trickyness_family (scalar_t__) ;
 scalar_t__ tt_check_trickyness_sfnt_ids (int ) ;

__attribute__((used)) static FT_Bool
  tt_check_trickyness( FT_Face face )
  {
    if ( !face )
      return FALSE;


    if ( face->family_name &&
         tt_check_trickyness_family( face->family_name ) )
      return TRUE;




    if ( tt_check_trickyness_sfnt_ids( (TT_Face)face ) )
      return TRUE;

    return FALSE;
  }
