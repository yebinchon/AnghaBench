
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int out; int count; } ;
typedef TYPE_1__ fz_ps_writer ;
typedef int fz_document_writer ;
typedef int fz_context ;


 int fz_close_output (int *,int ) ;
 int fz_write_ps_file_trailer (int *,int ,int ) ;

__attribute__((used)) static void
ps_close_writer(fz_context *ctx, fz_document_writer *wri_)
{
 fz_ps_writer *wri = (fz_ps_writer*)wri_;
 fz_write_ps_file_trailer(ctx, wri->out, wri->count);
 fz_close_output(ctx, wri->out);
}
