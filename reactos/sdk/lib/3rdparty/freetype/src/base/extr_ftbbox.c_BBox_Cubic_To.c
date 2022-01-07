
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int yMax; int yMin; int xMax; int xMin; } ;
struct TYPE_12__ {int y; int x; } ;
struct TYPE_11__ {TYPE_2__ last; TYPE_4__ bbox; } ;
typedef TYPE_1__ TBBox_Rec ;
typedef TYPE_2__ FT_Vector ;


 int BBox_Cubic_Check (int ,int ,int ,int ,int *,int *) ;
 scalar_t__ CHECK_X (TYPE_2__*,TYPE_4__) ;
 scalar_t__ CHECK_Y (TYPE_2__*,TYPE_4__) ;

__attribute__((used)) static int
  BBox_Cubic_To( FT_Vector* control1,
                 FT_Vector* control2,
                 FT_Vector* to,
                 TBBox_Rec* user )
  {




    if ( CHECK_X( control1, user->bbox ) ||
         CHECK_X( control2, user->bbox ) )
      BBox_Cubic_Check( user->last.x,
                        control1->x,
                        control2->x,
                        to->x,
                        &user->bbox.xMin,
                        &user->bbox.xMax );

    if ( CHECK_Y( control1, user->bbox ) ||
         CHECK_Y( control2, user->bbox ) )
      BBox_Cubic_Check( user->last.y,
                        control1->y,
                        control2->y,
                        to->y,
                        &user->bbox.yMin,
                        &user->bbox.yMax );

    user->last = *to;

    return 0;
  }
