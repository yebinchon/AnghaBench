
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int Datum ;


 int DirectFunctionCall1 (int ,int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int Int64GetDatum (int ) ;
 int int8_numeric ;
 int numeric_add ;
 int numeric_div ;
 int numeric_mul ;
 int numeric_sub ;

__attribute__((used)) static Datum
interpolate_numeric(int64 x_i, int64 x0_i, int64 x1_i, Datum y0, Datum y1)
{
 Datum x0 = DirectFunctionCall1(int8_numeric, Int64GetDatum(x0_i));
 Datum x1 = DirectFunctionCall1(int8_numeric, Int64GetDatum(x1_i));
 Datum x = DirectFunctionCall1(int8_numeric, Int64GetDatum(x_i));

 Datum x1_sub_x = DirectFunctionCall2(numeric_sub, x1, x);
 Datum x_sub_x0 = DirectFunctionCall2(numeric_sub, x, x0);
 Datum y0_mul_x1_sub_x = DirectFunctionCall2(numeric_mul, y0, x1_sub_x);
 Datum y1_mul_x_sub_x0 = DirectFunctionCall2(numeric_mul, y1, x_sub_x0);

 Datum numerator = DirectFunctionCall2(numeric_add, y0_mul_x1_sub_x, y1_mul_x_sub_x0);
 Datum denominator = DirectFunctionCall2(numeric_sub, x1, x0);

 return DirectFunctionCall2(numeric_div, numerator, denominator);
}
