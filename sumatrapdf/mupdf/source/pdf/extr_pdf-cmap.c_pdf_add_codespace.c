
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int codespace_len; TYPE_3__* codespace; } ;
typedef TYPE_1__ pdf_cmap ;
typedef int fz_context ;
struct TYPE_5__ {int n; unsigned int low; unsigned int high; } ;


 int fz_warn (int *,char*) ;
 int nelem (TYPE_3__*) ;

void
pdf_add_codespace(fz_context *ctx, pdf_cmap *cmap, unsigned int low, unsigned int high, int n)
{
 if (cmap->codespace_len + 1 == nelem(cmap->codespace))
 {
  fz_warn(ctx, "assert: too many code space ranges");
  return;
 }

 cmap->codespace[cmap->codespace_len].n = n;
 cmap->codespace[cmap->codespace_len].low = low;
 cmap->codespace[cmap->codespace_len].high = high;
 cmap->codespace_len ++;
}
