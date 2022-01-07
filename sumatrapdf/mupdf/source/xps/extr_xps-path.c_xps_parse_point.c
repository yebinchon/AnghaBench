
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xps_document ;
typedef int fz_context ;


 char* xps_parse_float_array (int *,int *,char*,int,float*) ;

char *
xps_parse_point(fz_context *ctx, xps_document *doc, char *s_in, float *x, float *y)
{
 char *s_out = s_in;
 float xy[2];

 s_out = xps_parse_float_array(ctx, doc, s_out, 2, &xy[0]);
 *x = xy[0];
 *y = xy[1];
 return s_out;
}
