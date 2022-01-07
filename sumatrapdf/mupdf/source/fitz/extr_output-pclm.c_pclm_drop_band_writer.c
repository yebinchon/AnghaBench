
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * out; } ;
struct TYPE_4__ {int xref_max; int pages; int obj_num; void** xref; void** page_obj; void** compbuf; void** stripbuf; TYPE_1__ super; } ;
typedef TYPE_2__ pclm_band_writer ;
typedef void* int64_t ;
typedef int fz_output ;
typedef int fz_context ;
typedef int fz_band_writer ;


 int fz_free (int *,void**) ;
 void* fz_tell_output (int *,int *) ;
 int fz_write_printf (int *,int *,char*,...) ;
 int fz_write_string (int *,int *,char*) ;

__attribute__((used)) static void
pclm_drop_band_writer(fz_context *ctx, fz_band_writer *writer_)
{
 pclm_band_writer *writer = (pclm_band_writer *)writer_;
 fz_output *out = writer->super.out;
 int i;


 if (writer->xref_max > 2)
 {
  int64_t t_pos;


  writer->xref[1] = fz_tell_output(ctx, out);
  fz_write_printf(ctx, out, "1 0 obj\n<<\n/Type /Catalog\n/Pages 2 0 R\n>>\nendobj\n");


  writer->xref[2] = fz_tell_output(ctx, out);
  fz_write_printf(ctx, out, "2 0 obj\n<<\n/Count %d\n/Kids [ ", writer->pages);

  for (i = 0; i < writer->pages; i++)
   fz_write_printf(ctx, out, "%d 0 R ", writer->page_obj[i]);
  fz_write_string(ctx, out, "]\n/Type /Pages\n>>\nendobj\n");


  t_pos = fz_tell_output(ctx, out);
  fz_write_printf(ctx, out, "xref\n0 %d\n0000000000 65535 f \n", writer->obj_num);
  for (i = 1; i < writer->obj_num; i++)
   fz_write_printf(ctx, out, "%010zd 00000 n \n", writer->xref[i]);
  fz_write_printf(ctx, out, "trailer\n<<\n/Size %d\n/Root 1 0 R\n>>\nstartxref\n%ld\n%%%%EOF\n", writer->obj_num, t_pos);
 }

 fz_free(ctx, writer->stripbuf);
 fz_free(ctx, writer->compbuf);
 fz_free(ctx, writer->page_obj);
 fz_free(ctx, writer->xref);
}
