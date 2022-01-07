
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int left; int bottom; int right; int top; } ;
struct workspace_config {int gaps_inner; TYPE_1__ gaps_outer; } ;


 int INT_MIN ;

__attribute__((used)) static void prevent_invalid_outer_gaps(struct workspace_config *wsc) {
 if (wsc->gaps_outer.top != INT_MIN &&
   wsc->gaps_outer.top < -wsc->gaps_inner) {
  wsc->gaps_outer.top = -wsc->gaps_inner;
 }
 if (wsc->gaps_outer.right != INT_MIN &&
   wsc->gaps_outer.right < -wsc->gaps_inner) {
  wsc->gaps_outer.right = -wsc->gaps_inner;
 }
 if (wsc->gaps_outer.bottom != INT_MIN &&
   wsc->gaps_outer.bottom < -wsc->gaps_inner) {
  wsc->gaps_outer.bottom = -wsc->gaps_inner;
 }
 if (wsc->gaps_outer.left != INT_MIN &&
   wsc->gaps_outer.left < -wsc->gaps_inner) {
  wsc->gaps_outer.left = -wsc->gaps_inner;
 }
}
