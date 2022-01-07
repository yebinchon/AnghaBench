
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ u; } ;
struct TYPE_5__ {int u; } ;
typedef int GXV_Validator ;
typedef TYPE_1__ GXV_LookupValueDesc ;
typedef TYPE_2__* GXV_LookupValueCPtr ;
typedef int FT_UShort ;
typedef int FT_Short ;
typedef int FT_Bytes ;


 int FT_UNUSED (int ) ;

__attribute__((used)) static GXV_LookupValueDesc
  gxv_opbd_LookupFmt4_transit( FT_UShort relative_gindex,
                               GXV_LookupValueCPtr base_value_p,
                               FT_Bytes lookuptbl_limit,
                               GXV_Validator gxvalid )
  {
    GXV_LookupValueDesc value;

    FT_UNUSED( lookuptbl_limit );
    FT_UNUSED( gxvalid );


    value.u = (FT_UShort)( base_value_p->u +
                           relative_gindex * 4 * sizeof ( FT_Short ) );

    return value;
  }
