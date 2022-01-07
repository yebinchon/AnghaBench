
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int id; } ;
typedef TYPE_3__ scrollbar_T ;
struct TYPE_8__ {int member_0; int member_1; } ;
struct TYPE_7__ {int member_0; int member_1; } ;
struct TYPE_10__ {TYPE_2__ member_1; TYPE_1__ member_0; } ;
typedef TYPE_4__ PhArea_t ;


 int PtSetResource (int ,int ,TYPE_4__*,int ) ;
 int Pt_ARG_AREA ;

void
gui_mch_set_scrollbar_pos(scrollbar_T *sb, int x, int y, int w, int h)
{
    PhArea_t area = {{ x, y }, { w, h }};

    PtSetResource(sb->id, Pt_ARG_AREA, &area, 0);
}
