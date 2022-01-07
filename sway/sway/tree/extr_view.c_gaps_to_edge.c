
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_view {TYPE_2__* container; } ;
struct side_gaps {scalar_t__ top; scalar_t__ right; scalar_t__ bottom; scalar_t__ left; } ;
struct TYPE_4__ {TYPE_1__* workspace; } ;
struct TYPE_3__ {struct side_gaps current_gaps; } ;



__attribute__((used)) static bool gaps_to_edge(struct sway_view *view) {
 struct side_gaps gaps = view->container->workspace->current_gaps;
 return gaps.top > 0 || gaps.right > 0 || gaps.bottom > 0 || gaps.left > 0;
}
