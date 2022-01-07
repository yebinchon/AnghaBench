
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int rs_end; int rs_start; int rs_fill; } ;
typedef TYPE_1__ range_seg_gap_t ;


 int fill_weight ;

__attribute__((used)) static int
ext_size_compare(const void *x, const void *y)
{
 const range_seg_gap_t *rsa = x, *rsb = y;

 uint64_t sa = rsa->rs_end - rsa->rs_start;
 uint64_t sb = rsb->rs_end - rsb->rs_start;
 uint64_t score_a, score_b;

 score_a = rsa->rs_fill + ((((rsa->rs_fill << 7) / sa) *
     fill_weight * rsa->rs_fill) >> 7);
 score_b = rsb->rs_fill + ((((rsb->rs_fill << 7) / sb) *
     fill_weight * rsb->rs_fill) >> 7);

 if (score_a > score_b)
  return (-1);
 if (score_a == score_b) {
  if (rsa->rs_start < rsb->rs_start)
   return (-1);
  if (rsa->rs_start == rsb->rs_start)
   return (0);
  return (1);
 }
 return (1);
}
