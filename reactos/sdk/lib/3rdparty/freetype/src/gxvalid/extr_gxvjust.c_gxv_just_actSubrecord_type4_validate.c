
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int subtable_length; } ;
typedef TYPE_1__* GXV_Validator ;
typedef int FT_ULong ;
typedef scalar_t__ FT_Fixed ;
typedef scalar_t__ FT_Bytes ;


 int FT_INVALID_DATA ;
 scalar_t__ FT_NEXT_LONG (scalar_t__) ;
 int FT_NEXT_ULONG (scalar_t__) ;
 int GXV_LIMIT_CHECK (int) ;
 int GXV_TRACE (char*) ;
 int IS_PARANOID_VALIDATION ;

__attribute__((used)) static void
  gxv_just_actSubrecord_type4_validate( FT_Bytes table,
                                        FT_Bytes limit,
                                        GXV_Validator gxvalid )
  {
    FT_Bytes p = table;
    FT_ULong variantsAxis;
    FT_Fixed minimumLimit;
    FT_Fixed noStretchValue;
    FT_Fixed maximumLimit;


    GXV_LIMIT_CHECK( 4 + 4 + 4 + 4 );
    variantsAxis = FT_NEXT_ULONG( p );
    minimumLimit = FT_NEXT_LONG( p );
    noStretchValue = FT_NEXT_LONG( p );
    maximumLimit = FT_NEXT_LONG( p );

    gxvalid->subtable_length = (FT_ULong)( p - table );

    if ( variantsAxis != 0x64756374L )
      GXV_TRACE(( "variantsAxis 0x%08x is non default value",
                   variantsAxis ));

    if ( minimumLimit > noStretchValue )
      GXV_TRACE(( "type4:minimumLimit 0x%08x > noStretchValue 0x%08x\n",
                  minimumLimit, noStretchValue ));
    else if ( noStretchValue > maximumLimit )
      GXV_TRACE(( "type4:noStretchValue 0x%08x > maximumLimit 0x%08x\n",
                  noStretchValue, maximumLimit ));
    else if ( !IS_PARANOID_VALIDATION )
      return;

    FT_INVALID_DATA;
  }
