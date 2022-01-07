
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
typedef TYPE_1__ scrollbar_T ;
typedef int PtArg_t ;


 int PtSetArg (int *,int ,int,int ) ;
 int PtSetResources (int ,int,int *) ;
 int Pt_ARG_GAUGE_VALUE ;
 int Pt_ARG_MAXIMUM ;
 int Pt_ARG_SLIDER_SIZE ;

void
gui_mch_set_scrollbar_thumb(scrollbar_T *sb, int val, int size, int max)
{
    int n = 0;
    PtArg_t args[3];

    PtSetArg(&args[ n++ ], Pt_ARG_MAXIMUM, max, 0);
    PtSetArg(&args[ n++ ], Pt_ARG_SLIDER_SIZE, size, 0);
    PtSetArg(&args[ n++ ], Pt_ARG_GAUGE_VALUE, val, 0);
    PtSetResources(sb->id, n, args);
}
