
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int sameValue(double a, double b){
  a -= b;
  return a>=-0.001 && a<=0.001;
}
