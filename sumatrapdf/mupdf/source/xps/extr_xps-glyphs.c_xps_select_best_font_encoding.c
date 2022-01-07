
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xps_document ;
typedef int fz_font ;
typedef int fz_context ;


 int fz_warn (int *,char*) ;
 int xps_count_font_encodings (int *,int *) ;
 int xps_identify_font_encoding (int *,int *,int,int*,int*) ;
 int xps_select_font_encoding (int *,int *,int) ;

__attribute__((used)) static void
xps_select_best_font_encoding(fz_context *ctx, xps_document *doc, fz_font *font)
{
 static struct { int pid, eid; } xps_cmap_list[] =
 {
  { 3, 10 },
  { 3, 1 },
  { 3, 5 },
  { 3, 4 },
  { 3, 3 },
  { 3, 2 },
  { 3, 0 },
  { 1, 0 },
  { -1, -1 },
 };

 int i, k, n, pid, eid;

 n = xps_count_font_encodings(ctx, font);
 for (k = 0; xps_cmap_list[k].pid != -1; k++)
 {
  for (i = 0; i < n; i++)
  {
   xps_identify_font_encoding(ctx, font, i, &pid, &eid);
   if (pid == xps_cmap_list[k].pid && eid == xps_cmap_list[k].eid)
   {
    xps_select_font_encoding(ctx, font, i);
    return;
   }
  }
 }

 fz_warn(ctx, "cannot find a suitable cmap");
}
