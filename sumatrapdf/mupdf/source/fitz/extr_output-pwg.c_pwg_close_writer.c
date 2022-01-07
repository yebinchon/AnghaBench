
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int out; } ;
typedef TYPE_1__ fz_pwg_writer ;
typedef int fz_document_writer ;
typedef int fz_context ;


 int fz_close_output (int *,int ) ;

__attribute__((used)) static void
pwg_close_writer(fz_context *ctx, fz_document_writer *wri_)
{
 fz_pwg_writer *wri = (fz_pwg_writer*)wri_;
 fz_close_output(ctx, wri->out);
}
