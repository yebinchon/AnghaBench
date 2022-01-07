
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ctx ;
 int doc ;
 int fz_write_printf (int ,int ,char*) ;
 int out ;
 int pdf_print_obj (int ,int ,int ,scalar_t__,int) ;
 int pdf_trailer (int ,int ) ;
 scalar_t__ tight ;

__attribute__((used)) static void showtrailer(void)
{
 if (tight)
  fz_write_printf(ctx, out, "trailer ");
 else
  fz_write_printf(ctx, out, "trailer\n");
 pdf_print_obj(ctx, out, pdf_trailer(ctx, doc), tight, 1);
 fz_write_printf(ctx, out, "\n");
}
