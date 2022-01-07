
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct graph {int dummy; } ;
typedef enum graph_display { ____Placeholder_graph_display } graph_display ;


 int GRAPH_DISPLAY_V1 ;
 int GRAPH_DISPLAY_V2 ;
 struct graph* init_graph_v1 () ;
 struct graph* init_graph_v2 () ;

struct graph *
init_graph(enum graph_display display)
{
 if (display == GRAPH_DISPLAY_V1)
  return init_graph_v1();
 if (display == GRAPH_DISPLAY_V2)
  return init_graph_v2();
 return ((void*)0);
}
