
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int obj; } ;
typedef TYPE_1__ pdf_annot ;
typedef int int64_t ;
typedef int fz_context ;


 int M ;
 int PDF_NAME (int ) ;
 int check_allowed_subtypes (int *,TYPE_1__*,int ,int ) ;
 int markup_subtypes ;
 int pdf_dict_put_string (int *,int ,int ,char*,int ) ;
 int pdf_dirty_annot (int *,TYPE_1__*) ;
 int pdf_format_date (int *,char*,int,int ) ;
 int strlen (char*) ;

void
pdf_set_annot_modification_date(fz_context *ctx, pdf_annot *annot, int64_t secs)
{
 char s[40];

 check_allowed_subtypes(ctx, annot, PDF_NAME(M), markup_subtypes);

 pdf_format_date(ctx, s, sizeof s, secs);
 pdf_dict_put_string(ctx, annot->obj, PDF_NAME(M), s, strlen(s));
 pdf_dirty_annot(ctx, annot);
}
