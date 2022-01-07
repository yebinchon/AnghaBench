
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int subtable_length; } ;
typedef TYPE_1__* GXV_Validator ;
typedef int FT_UShort ;
typedef int FT_ULong ;
typedef int FT_Bytes ;


 int FT_INVALID_DATA ;
 int FT_NEXT_ULONG (int ) ;
 int FT_NEXT_USHORT (int ) ;
 int GXV_EXIT ;
 int GXV_LIMIT_CHECK (int) ;
 int GXV_NAME_ENTER (char*) ;
 int GXV_SET_ERR_IF_PARANOID (int ) ;
 int gxv_just_actSubrecord_type0_validate (int ,int ,TYPE_1__*) ;
 int gxv_just_actSubrecord_type1_validate (int ,int ,TYPE_1__*) ;
 int gxv_just_actSubrecord_type2_validate (int ,int ,TYPE_1__*) ;
 int gxv_just_actSubrecord_type4_validate (int ,int ,TYPE_1__*) ;
 int gxv_just_actSubrecord_type5_validate (int ,int ,TYPE_1__*) ;

__attribute__((used)) static void
  gxv_just_actSubrecord_validate( FT_Bytes table,
                                  FT_Bytes limit,
                                  GXV_Validator gxvalid )
  {
    FT_Bytes p = table;
    FT_UShort actionClass;
    FT_UShort actionType;
    FT_ULong actionLength;


    GXV_NAME_ENTER( "just actSubrecord" );

    GXV_LIMIT_CHECK( 2 + 2 + 4 );
    actionClass = FT_NEXT_USHORT( p );
    actionType = FT_NEXT_USHORT( p );
    actionLength = FT_NEXT_ULONG( p );


    if ( ( actionClass & 0xFF80 ) != 0 )
      GXV_SET_ERR_IF_PARANOID( FT_INVALID_DATA );

    if ( actionType == 0 )
      gxv_just_actSubrecord_type0_validate( p, limit, gxvalid );
    else if ( actionType == 1 )
      gxv_just_actSubrecord_type1_validate( p, limit, gxvalid );
    else if ( actionType == 2 )
      gxv_just_actSubrecord_type2_validate( p, limit, gxvalid );
    else if ( actionType == 3 )
      ;
    else if ( actionType == 4 )
      gxv_just_actSubrecord_type4_validate( p, limit, gxvalid );
    else if ( actionType == 5 )
      gxv_just_actSubrecord_type5_validate( p, limit, gxvalid );
    else
      FT_INVALID_DATA;

    gxvalid->subtable_length = actionLength;

    GXV_EXIT;
  }
