
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int f; scalar_t__ e; } ;
typedef TYPE_1__ diy_fp_t ;


 TYPE_1__ cached_power (int) ;
 int digit_gen (TYPE_1__,TYPE_1__,char*,int*,int*) ;
 int k_comp (scalar_t__,int,int) ;
 TYPE_1__ minus (TYPE_1__,TYPE_1__) ;
 TYPE_1__ multiply (TYPE_1__,TYPE_1__) ;
 int normalized_boundaries (double,TYPE_1__*,TYPE_1__*) ;

int
js_grisu2(double v, char *buffer, int *K)
{
 int length, mk;
 diy_fp_t w_m, w_p, c_mk, Wp, Wm, delta;
 int q = 64, alpha = -59, gamma = -56;
 normalized_boundaries(v, &w_m, &w_p);
 mk = k_comp(w_p.e + q, alpha, gamma);
 c_mk = cached_power(mk);
 Wp = multiply(w_p, c_mk);
 Wm = multiply(w_m, c_mk);
 Wm.f++; Wp.f--;
 delta = minus(Wp, Wm);
 *K = -mk;
 digit_gen(Wp, delta, buffer, &length, K);
 return length;
}
