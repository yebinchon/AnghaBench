
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int icS15Fixed16Number ;
typedef int fz_context ;



__attribute__((used)) static icS15Fixed16Number
double2XYZtype(fz_context *ctx, float number_in)
{
 short s;
 unsigned short m;

 if (number_in < 0)
  number_in = 0;
 s = (short)number_in;
 m = (unsigned short)((number_in - s) * 65536);
 return (icS15Fixed16Number) ((s << 16) | m);
}
