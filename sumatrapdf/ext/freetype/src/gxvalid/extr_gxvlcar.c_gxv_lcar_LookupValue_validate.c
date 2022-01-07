
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ u; } ;
struct TYPE_8__ {TYPE_1__* root; } ;
struct TYPE_7__ {scalar_t__ limit; scalar_t__ base; } ;
typedef TYPE_2__* GXV_Validator ;
typedef TYPE_3__* GXV_LookupValueCPtr ;
typedef int FT_UShort ;
typedef int FT_Short ;
typedef scalar_t__ FT_Bytes ;


 int FT_NEXT_SHORT (scalar_t__) ;
 int FT_NEXT_USHORT (scalar_t__) ;
 int GXV_EXIT ;
 int GXV_LIMIT_CHECK (int) ;
 int GXV_NAME_ENTER (char*) ;
 int gxv_lcar_partial_validate (int ,int,TYPE_2__*) ;

__attribute__((used)) static void
  gxv_lcar_LookupValue_validate( FT_UShort glyph,
                                 GXV_LookupValueCPtr value_p,
                                 GXV_Validator gxvalid )
  {
    FT_Bytes p = gxvalid->root->base + value_p->u;
    FT_Bytes limit = gxvalid->root->limit;
    FT_UShort count;
    FT_Short partial;
    FT_UShort i;


    GXV_NAME_ENTER( "element in lookupTable" );

    GXV_LIMIT_CHECK( 2 );
    count = FT_NEXT_USHORT( p );

    GXV_LIMIT_CHECK( 2 * count );
    for ( i = 0; i < count; i++ )
    {
      partial = FT_NEXT_SHORT( p );
      gxv_lcar_partial_validate( partial, glyph, gxvalid );
    }

    GXV_EXIT;
  }
