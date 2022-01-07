
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;


 int ctx ;
 int fz_write_printf (int ,int ,char*,...) ;
 int out ;
 scalar_t__ pdf_is_stream (int ,int *) ;
 int pdf_print_obj (int ,int ,int *,int,int) ;
 int * pdf_resolve_indirect (int ,int *) ;
 int pdf_to_num (int ,int *) ;
 scalar_t__ showbinary ;
 int showstream (int) ;
 scalar_t__ tight ;

__attribute__((used)) static void showobject(pdf_obj *ref)
{
 pdf_obj *obj = pdf_resolve_indirect(ctx, ref);
 int num = pdf_to_num(ctx, ref);
 if (pdf_is_stream(ctx, ref))
 {
  if (showbinary)
  {
   showstream(num);
  }
  else
  {
   if (tight)
   {
    fz_write_printf(ctx, out, "%d 0 obj ", num);
    pdf_print_obj(ctx, out, obj, 1, 1);
    fz_write_printf(ctx, out, " stream\n");
   }
   else
   {
    fz_write_printf(ctx, out, "%d 0 obj\n", num);
    pdf_print_obj(ctx, out, obj, 0, 1);
    fz_write_printf(ctx, out, "\nstream\n");
    showstream(num);
    fz_write_printf(ctx, out, "endstream\n");
    fz_write_printf(ctx, out, "endobj\n");
   }
  }
 }
 else
 {
  if (tight)
  {
   fz_write_printf(ctx, out, "%d 0 obj ", num);
   pdf_print_obj(ctx, out, obj, 1, 1);
   fz_write_printf(ctx, out, "\n");
  }
  else
  {
   fz_write_printf(ctx, out, "%d 0 obj\n", num);
   pdf_print_obj(ctx, out, obj, 0, 1);
   fz_write_printf(ctx, out, "\nendobj\n");
  }
 }
}
