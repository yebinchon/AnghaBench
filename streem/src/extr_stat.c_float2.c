
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;


 int fprintf (int ,char*,double,double) ;
 int stderr ;
 int strm_ary_new (int *,int) ;
 int strm_float_value (double) ;

__attribute__((used)) static strm_value
float2(double m, double s)
{
  strm_value buf[2];

  fprintf(stderr, "f2[%f, %f]\n", m, s);
  buf[0] = strm_float_value(m);
  buf[1] = strm_float_value(s);
  return strm_ary_new(buf, 2);
}
