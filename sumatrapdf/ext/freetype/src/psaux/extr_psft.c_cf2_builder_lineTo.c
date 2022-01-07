
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int y; int x; } ;
struct TYPE_13__ {int y; int x; } ;
struct TYPE_18__ {scalar_t__ op; TYPE_3__ pt1; TYPE_2__ pt0; } ;
struct TYPE_17__ {TYPE_1__* decoder; } ;
struct TYPE_16__ {void** error; } ;
struct TYPE_15__ {int path_begun; } ;
struct TYPE_12__ {TYPE_4__ builder; } ;
typedef TYPE_4__ PS_Builder ;
typedef void* FT_Error ;
typedef TYPE_5__* CF2_OutlineCallbacks ;
typedef TYPE_6__* CF2_Outline ;
typedef TYPE_7__* CF2_CallbackParams ;


 scalar_t__ CF2_PathOpLineTo ;
 int FT_ASSERT (int) ;
 void* ps_builder_add_point1 (TYPE_4__*,int ,int ) ;
 void* ps_builder_start_point (TYPE_4__*,int ,int ) ;

__attribute__((used)) static void
  cf2_builder_lineTo( CF2_OutlineCallbacks callbacks,
                      const CF2_CallbackParams params )
  {
    FT_Error error;


    CF2_Outline outline = (CF2_Outline)callbacks;
    PS_Builder* builder;


    FT_ASSERT( outline && outline->decoder );
    FT_ASSERT( params->op == CF2_PathOpLineTo );

    builder = &outline->decoder->builder;

    if ( !builder->path_begun )
    {


      error = ps_builder_start_point( builder,
                                      params->pt0.x,
                                      params->pt0.y );
      if ( error )
      {
        if ( !*callbacks->error )
          *callbacks->error = error;
        return;
      }
    }


    error = ps_builder_add_point1( builder,
                                   params->pt1.x,
                                   params->pt1.y );
    if ( error )
    {
      if ( !*callbacks->error )
        *callbacks->error = error;
      return;
    }
  }
