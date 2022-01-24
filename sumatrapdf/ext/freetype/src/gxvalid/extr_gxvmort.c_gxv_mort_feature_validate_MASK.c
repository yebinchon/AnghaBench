#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int nSettings; scalar_t__ exclusive; int /*<<< orphan*/  existence; } ;
struct TYPE_4__ {size_t featureType; int featureSetting; } ;
typedef  TYPE_1__* GXV_mort_feature ;
typedef  int /*<<< orphan*/  GXV_Validator ;
typedef  int FT_Byte ;

/* Variables and functions */
 int /*<<< orphan*/  FT_INVALID_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_3__* gxv_feat_registry ; 
 size_t gxv_feat_registry_length ; 

__attribute__((used)) static void
  FUNC2( GXV_mort_feature  f,
                             GXV_Validator     gxvalid )
  {
    if ( f->featureType >= gxv_feat_registry_length )
    {
      FUNC1(( "featureType %d is out of registered range, "
                  "setting %d is unchecked\n",
                  f->featureType, f->featureSetting ));
      FUNC0( FT_INVALID_DATA );
    }
    else if ( !gxv_feat_registry[f->featureType].existence )
    {
      FUNC1(( "featureType %d is within registered area "
                  "but undefined, setting %d is unchecked\n",
                  f->featureType, f->featureSetting ));
      FUNC0( FT_INVALID_DATA );
    }
    else
    {
      FT_Byte  nSettings_max;


      /* nSettings in gxvfeat.c is halved for exclusive on/off settings */
      nSettings_max = gxv_feat_registry[f->featureType].nSettings;
      if ( gxv_feat_registry[f->featureType].exclusive )
        nSettings_max = (FT_Byte)( 2 * nSettings_max );

      FUNC1(( "featureType %d is registered", f->featureType ));
      FUNC1(( "setting %d", f->featureSetting ));

      if ( f->featureSetting > nSettings_max )
      {
        FUNC1(( "out of defined range %d", nSettings_max ));
        FUNC0( FT_INVALID_DATA );
      }
      FUNC1(( "\n" ));
    }

    /* TODO: enableFlags must be unique value in specified chain?  */
  }