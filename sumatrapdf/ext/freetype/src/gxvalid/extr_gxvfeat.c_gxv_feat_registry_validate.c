
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ existence; size_t nSettings; scalar_t__ exclusive; scalar_t__ apple_reserved; } ;
struct TYPE_6__ {TYPE_1__* root; } ;
struct TYPE_5__ {scalar_t__ level; } ;
typedef TYPE_2__* GXV_Validator ;
typedef size_t FT_UShort ;
typedef scalar_t__ FT_Bool ;


 int FT_INVALID_DATA ;
 scalar_t__ FT_VALIDATE_TIGHT ;
 int GXV_EXIT ;
 int GXV_NAME_ENTER (char*) ;
 int GXV_SET_ERR_IF_PARANOID (int ) ;
 int GXV_TRACE (char*) ;
 TYPE_4__* gxv_feat_registry ;
 size_t gxv_feat_registry_length ;

__attribute__((used)) static void
  gxv_feat_registry_validate( FT_UShort feature,
                              FT_UShort nSettings,
                              FT_Bool exclusive,
                              GXV_Validator gxvalid )
  {
    GXV_NAME_ENTER( "feature in registry" );

    GXV_TRACE(( " (feature = %u)\n", feature ));

    if ( feature >= gxv_feat_registry_length )
    {
      GXV_TRACE(( "feature number %d is out of range %d\n",
                  feature, gxv_feat_registry_length ));
      GXV_SET_ERR_IF_PARANOID( FT_INVALID_DATA );
      goto Exit;
    }

    if ( gxv_feat_registry[feature].existence == 0 )
    {
      GXV_TRACE(( "feature number %d is in defined range but doesn't exist\n",
                  feature ));
      GXV_SET_ERR_IF_PARANOID( FT_INVALID_DATA );
      goto Exit;
    }

    if ( gxv_feat_registry[feature].apple_reserved )
    {

      GXV_TRACE(( "feature number %d is reserved by Apple\n", feature ));
      if ( gxvalid->root->level >= FT_VALIDATE_TIGHT )
        FT_INVALID_DATA;
    }

    if ( nSettings != gxv_feat_registry[feature].nSettings )
    {
      GXV_TRACE(( "feature %d: nSettings %d != defined nSettings %d\n",
                  feature, nSettings,
                  gxv_feat_registry[feature].nSettings ));
      if ( gxvalid->root->level >= FT_VALIDATE_TIGHT )
        FT_INVALID_DATA;
    }

    if ( exclusive != gxv_feat_registry[feature].exclusive )
    {
      GXV_TRACE(( "exclusive flag %d differs from predefined value\n",
                  exclusive ));
      if ( gxvalid->root->level >= FT_VALIDATE_TIGHT )
        FT_INVALID_DATA;
    }

  Exit:
    GXV_EXIT;
  }
