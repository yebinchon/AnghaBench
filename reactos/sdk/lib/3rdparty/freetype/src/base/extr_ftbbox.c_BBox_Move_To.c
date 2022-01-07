
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int last; int bbox; } ;
typedef TYPE_1__ TBBox_Rec ;
typedef int FT_Vector ;


 int FT_UPDATE_BBOX (int *,int ) ;

__attribute__((used)) static int
  BBox_Move_To( FT_Vector* to,
                TBBox_Rec* user )
  {
    FT_UPDATE_BBOX( to, user->bbox );

    user->last = *to;

    return 0;
  }
