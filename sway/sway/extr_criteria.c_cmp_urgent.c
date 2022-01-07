
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct sway_view {TYPE_1__ urgent; } ;



__attribute__((used)) static int cmp_urgent(const void *_a, const void *_b) {
 struct sway_view *a = *(void **)_a;
 struct sway_view *b = *(void **)_b;

 if (a->urgent.tv_sec < b->urgent.tv_sec) {
  return -1;
 } else if (a->urgent.tv_sec > b->urgent.tv_sec) {
  return 1;
 }
 if (a->urgent.tv_nsec < b->urgent.tv_nsec) {
  return -1;
 } else if (a->urgent.tv_nsec > b->urgent.tv_nsec) {
  return 1;
 }
 return 0;
}
