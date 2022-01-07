
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int graph; } ;
struct TYPE_4__ {TYPE_1__ commit_title; } ;
struct view_column {TYPE_2__ opt; } ;
struct view {int dummy; } ;
typedef enum open_flags { ____Placeholder_open_flags } open_flags ;
typedef enum graph_display { ____Placeholder_graph_display } graph_display ;


 scalar_t__ COMMIT_ORDER_REVERSE ;
 int GRAPH_DISPLAY_NO ;
 int open_in_pager_mode (int) ;
 scalar_t__ opt_commit_order ;
 int opt_log_follow ;

__attribute__((used)) static enum graph_display
main_with_graph(struct view *view, struct view_column *column, enum open_flags flags)
{
 return column && opt_commit_order != COMMIT_ORDER_REVERSE && !open_in_pager_mode(flags) && !opt_log_follow
        ? column->opt.commit_title.graph : GRAPH_DISPLAY_NO;
}
