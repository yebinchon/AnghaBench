
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int yMax; int yMin; int xMax; int xMin; } ;
struct TYPE_13__ {int y; int x; } ;
struct TYPE_12__ {TYPE_2__ last; TYPE_4__ bbox; } ;
typedef TYPE_1__ TBBox_Rec ;
typedef TYPE_2__ FT_Vector ;


 int BBox_Conic_Check (int ,int ,int ,int *,int *) ;
 scalar_t__ CHECK_X (TYPE_2__*,TYPE_4__) ;
 scalar_t__ CHECK_Y (TYPE_2__*,TYPE_4__) ;
 int FT_UPDATE_BBOX (TYPE_2__*,TYPE_4__) ;

__attribute__((used)) static int
  BBox_Conic_To( FT_Vector* control,
                 FT_Vector* to,
                 TBBox_Rec* user )
  {

    FT_UPDATE_BBOX( to, user->bbox );

    if ( CHECK_X( control, user->bbox ) )
      BBox_Conic_Check( user->last.x,
                        control->x,
                        to->x,
                        &user->bbox.xMin,
                        &user->bbox.xMax );

    if ( CHECK_Y( control, user->bbox ) )
      BBox_Conic_Check( user->last.y,
                        control->y,
                        to->y,
                        &user->bbox.yMin,
                        &user->bbox.yMax );

    user->last = *to;

    return 0;
  }
