
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_separations; char** name; } ;
typedef TYPE_1__ fz_separations ;
typedef int fz_context ;
typedef int fz_colorspace ;
typedef int fz_color_params ;


 int FZ_MAX_COLORS ;
 int assert (int ) ;
 char* fz_colorspace_colorant (int *,int *,int) ;
 int fz_colorspace_is_device_n (int *,int *) ;
 int fz_colorspace_is_subtractive (int *,int *) ;
 int fz_colorspace_n (int *,int *) ;
 int fz_convert_color (int *,int *,float*,int *,float*,int *,int ) ;
 int fz_warn (int *,char*) ;
 int memset (float*,int ,int) ;
 int strcmp (char const*,char const*) ;

void
fz_convert_separation_colors(fz_context *ctx,
 fz_colorspace *src_cs, const float *src_color,
 fz_separations *dst_seps, fz_colorspace *dst_cs, float *dst_color,
 fz_color_params color_params)
{
 int i, j, n, dc, ds, dn, pred;
 float remainders[FZ_MAX_COLORS];
 int remaining = 0;

 assert(dst_cs && src_cs && dst_color && src_color);
 assert(fz_colorspace_is_device_n(ctx, src_cs));

 dc = fz_colorspace_n(ctx, dst_cs);
 ds = (dst_seps == ((void*)0) ? 0: dst_seps->num_separations);
 dn = dc + ds;

 i = 0;
 if (!fz_colorspace_is_subtractive(ctx, dst_cs))
  for (; i < dc; i++)
   dst_color[i] = 1;
 for (; i < dn; i++)
  dst_color[i] = 0;

 n = fz_colorspace_n(ctx, src_cs);
 pred = 0;
 for (i = 0; i < n; i++)
 {
  const char *name = fz_colorspace_colorant(ctx, src_cs, i);

  if (name == ((void*)0))
   continue;
  if (i == 0 && !strcmp(name, "All"))
  {

   if (n != 1)
    fz_warn(ctx, "All found in DeviceN space");
   for (i = 0; i < dn; i++)
    dst_color[i] = src_color[0];
   break;
  }
  if (!strcmp(name, "None"))
   continue;



  for (j = pred; j < ds; j++)
  {
   const char *dname = dst_seps->name[j];
   if (dname && !strcmp(name, dname))
    goto found_sep;
  }
  for (j = 0; j < pred; j++)
  {
   const char *dname = dst_seps->name[j];
   if (dname && !strcmp(name, dname))
    goto found_sep;
  }
  for (j = 0; j < dc; j++)
  {
   const char *dname = fz_colorspace_colorant(ctx, dst_cs, j);
   if (dname && !strcmp(name, dname))
    goto found_process;
  }
  if (0) {
found_sep:
   dst_color[j+dc] = src_color[i];
   pred = j+1;
  }
  else if (0)
  {
found_process:
   dst_color[j] += src_color[i];
  }
  else
  {
   if (remaining == 0)
   {
    memset(remainders, 0, sizeof(float) * n);
    remaining = 1;
   }
   remainders[i] = src_color[i];
  }
 }

 if (remaining)
 {

  float converted[FZ_MAX_COLORS];
  fz_convert_color(ctx, src_cs, remainders, dst_cs, converted, ((void*)0), color_params);
  for (i = 0; i < dc; i++)
   dst_color[i] += converted[i];
 }
}
