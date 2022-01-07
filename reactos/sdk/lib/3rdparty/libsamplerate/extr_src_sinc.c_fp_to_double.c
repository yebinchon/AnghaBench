
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int increment_t ;


 double INV_FP_ONE ;
 double fp_fraction_part (int ) ;

__attribute__((used)) static inline double
fp_to_double (increment_t x)
{ return fp_fraction_part (x) * INV_FP_ONE ;
}
