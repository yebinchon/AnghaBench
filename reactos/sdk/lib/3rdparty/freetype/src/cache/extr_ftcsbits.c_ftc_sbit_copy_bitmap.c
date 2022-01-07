
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int buffer; } ;
struct TYPE_5__ {int rows; int buffer; scalar_t__ pitch; } ;
typedef int FT_ULong ;
typedef int FT_Memory ;
typedef scalar_t__ FT_Int ;
typedef int FT_Error ;
typedef TYPE_1__ FT_Bitmap ;
typedef TYPE_2__* FTC_SBit ;


 int FT_ALLOC (int ,int) ;
 int FT_Err_Ok ;
 int FT_MEM_COPY (int ,int ,int) ;

__attribute__((used)) static FT_Error
  ftc_sbit_copy_bitmap( FTC_SBit sbit,
                        FT_Bitmap* bitmap,
                        FT_Memory memory )
  {
    FT_Error error;
    FT_Int pitch = bitmap->pitch;
    FT_ULong size;


    if ( pitch < 0 )
      pitch = -pitch;

    size = (FT_ULong)pitch * bitmap->rows;
    if ( !size )
      return FT_Err_Ok;

    if ( !FT_ALLOC( sbit->buffer, size ) )
      FT_MEM_COPY( sbit->buffer, bitmap->buffer, size );

    return error;
  }
