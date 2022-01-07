
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int subtable_length; } ;
typedef TYPE_1__* GXV_Validator ;
typedef int FT_UShort ;
typedef int FT_ULong ;
typedef void* FT_Fixed ;
typedef scalar_t__ FT_Bytes ;


 int FT_INVALID_DATA ;
 void* FT_NEXT_ULONG (scalar_t__) ;
 int FT_NEXT_USHORT (scalar_t__) ;
 int GXV_LIMIT_CHECK (int) ;
 int GXV_SET_ERR_IF_PARANOID (int ) ;
 int GXV_TRACE (char*) ;

__attribute__((used)) static void
  gxv_just_wdp_entry_validate( FT_Bytes table,
                               FT_Bytes limit,
                               GXV_Validator gxvalid )
  {
    FT_Bytes p = table;
    FT_ULong justClass;
    GXV_LIMIT_CHECK( 4 + 4 + 4 + 4 + 4 + 2 + 2 );
    justClass = FT_NEXT_ULONG( p );

    p += 4 + 4 + 4 + 4 + 2 + 2;
    if ( ( justClass & 0xFFFFFF80UL ) != 0 )
    {
      GXV_TRACE(( "just table includes non-zero value"
                  " in unused justClass higher bits"
                  " of WidthDeltaPair" ));
      GXV_SET_ERR_IF_PARANOID( FT_INVALID_DATA );
    }

    gxvalid->subtable_length = (FT_ULong)( p - table );
  }
