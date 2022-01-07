
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char type; int gen; scalar_t__ ofs; } ;
typedef TYPE_1__ pdf_xref_entry ;


 int ctx ;
 int doc ;
 int fz_write_printf (int ,int ,char*,int,...) ;
 int out ;
 TYPE_1__* pdf_get_xref_entry (int ,int ,int) ;
 int pdf_xref_len (int ,int ) ;

__attribute__((used)) static void showxref(void)
{
 int i;
 int xref_len = pdf_xref_len(ctx, doc);
 fz_write_printf(ctx, out, "xref\n0 %d\n", xref_len);
 for (i = 0; i < xref_len; i++)
 {
  pdf_xref_entry *entry = pdf_get_xref_entry(ctx, doc, i);
  fz_write_printf(ctx, out, "%05d: %010d %05d %c \n",
    i,
    (int)entry->ofs,
    entry->gen,
    entry->type ? entry->type : '-');
 }
}
