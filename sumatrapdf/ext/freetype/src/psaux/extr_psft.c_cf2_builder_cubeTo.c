
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_19__ {int y; int x; } ;
struct TYPE_18__ {int y; int x; } ;
struct TYPE_17__ {int y; int x; } ;
struct TYPE_16__ {int y; int x; } ;
struct TYPE_23__ {scalar_t__ op; TYPE_5__ pt3; TYPE_4__ pt2; TYPE_3__ pt1; TYPE_2__ pt0; } ;
struct TYPE_22__ {TYPE_1__* decoder; } ;
struct TYPE_21__ {void** error; } ;
struct TYPE_20__ {int path_begun; } ;
struct TYPE_15__ {TYPE_6__ builder; } ;
typedef TYPE_6__ PS_Builder ;
typedef void* FT_Error ;
typedef TYPE_7__* CF2_OutlineCallbacks ;
typedef TYPE_8__* CF2_Outline ;
typedef TYPE_9__* CF2_CallbackParams ;


 scalar_t__ CF2_PathOpCubeTo ;
 int FT_ASSERT (int) ;
 int ps_builder_add_point (TYPE_6__*,int ,int ,int) ;
 void* ps_builder_check_points (TYPE_6__*,int) ;
 void* ps_builder_start_point (TYPE_6__*,int ,int ) ;

__attribute__((used)) static void
  cf2_builder_cubeTo( CF2_OutlineCallbacks callbacks,
                      const CF2_CallbackParams params )
  {
    FT_Error error;


    CF2_Outline outline = (CF2_Outline)callbacks;
    PS_Builder* builder;


    FT_ASSERT( outline && outline->decoder );
    FT_ASSERT( params->op == CF2_PathOpCubeTo );

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


    error = ps_builder_check_points( builder, 3 );
    if ( error )
    {
      if ( !*callbacks->error )
        *callbacks->error = error;
      return;
    }

    ps_builder_add_point( builder,
                          params->pt1.x,
                          params->pt1.y, 0 );
    ps_builder_add_point( builder,
                          params->pt2.x,
                          params->pt2.y, 0 );
    ps_builder_add_point( builder,
                          params->pt3.x,
                          params->pt3.y, 1 );
  }
