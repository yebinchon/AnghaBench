
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int left; int bottom; int right; int top; } ;
struct TYPE_4__ {int gaps_inner; TYPE_1__ gaps_outer; } ;


 TYPE_2__* config ;

__attribute__((used)) static void prevent_invalid_outer_gaps(void) {
 if (config->gaps_outer.top < -config->gaps_inner) {
  config->gaps_outer.top = -config->gaps_inner;
 }
 if (config->gaps_outer.right < -config->gaps_inner) {
  config->gaps_outer.right = -config->gaps_inner;
 }
 if (config->gaps_outer.bottom < -config->gaps_inner) {
  config->gaps_outer.bottom = -config->gaps_inner;
 }
 if (config->gaps_outer.left < -config->gaps_inner) {
  config->gaps_outer.left = -config->gaps_inner;
 }
}
