
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int D_1_LOG2_10 ;
 int ceil (int) ;

__attribute__((used)) static int k_comp(int e, int alpha, int gamma) {
 return ceil((alpha-e+63) * D_1_LOG2_10);
}
