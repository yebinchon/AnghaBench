
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct graph_canvas {TYPE_1__* symbols; } ;
struct TYPE_2__ {int merge; } ;



__attribute__((used)) static bool
graph_is_merge(struct graph_canvas *canvas)
{
 return !!canvas->symbols->merge;
}
