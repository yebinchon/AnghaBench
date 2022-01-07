
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int y; int x; } ;
struct TYPE_8__ {int y; int x; } ;
struct TYPE_12__ {int y; int x; } ;
struct TYPE_11__ {int y; int x; } ;
struct TYPE_10__ {int y; int x; } ;
struct TYPE_13__ {TYPE_2__ ptMaxTrackSize; TYPE_1__ ptMinTrackSize; TYPE_5__ ptMaxPosition; TYPE_4__ ptMaxSize; TYPE_3__ ptReserved; } ;
typedef TYPE_6__ MINMAXINFO ;


 int trace (char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void dump_minmax_info( const MINMAXINFO *minmax )
{
    trace("Reserved=%d,%d MaxSize=%d,%d MaxPos=%d,%d MinTrack=%d,%d MaxTrack=%d,%d\n",
          minmax->ptReserved.x, minmax->ptReserved.y,
          minmax->ptMaxSize.x, minmax->ptMaxSize.y,
          minmax->ptMaxPosition.x, minmax->ptMaxPosition.y,
          minmax->ptMinTrackSize.x, minmax->ptMinTrackSize.y,
          minmax->ptMaxTrackSize.x, minmax->ptMaxTrackSize.y);
}
