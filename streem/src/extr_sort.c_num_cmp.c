
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;


 double strm_value_float (int ) ;

__attribute__((used)) static int
num_cmp(strm_value x, strm_value y)
{
  double a = strm_value_float(x);
  double b = strm_value_float(y);
  if(a > b)
    return 1;
  else if(a < b)
    return -1;
  return 0;
}
