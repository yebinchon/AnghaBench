
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int list_len; size_t* renumber_map; int * rev_renumber_map; int * use_list; } ;
typedef TYPE_1__ pdf_write_state ;
typedef int pdf_document ;
typedef int fz_context ;


 int expand_lists (int *,TYPE_1__*,int) ;
 int pdf_xref_len (int *,int *) ;

__attribute__((used)) static void compactxref(fz_context *ctx, pdf_document *doc, pdf_write_state *opts)
{
 int num, newnum;
 int xref_len = pdf_xref_len(ctx, doc);
 if (xref_len > opts->list_len)
  expand_lists(ctx, opts, xref_len-1);

 newnum = 1;
 for (num = 1; num < xref_len; num++)
 {

  if (!opts->use_list[opts->renumber_map[num]])
  {
   opts->renumber_map[num] = 0;
  }

  else if (opts->renumber_map[num] == num)
  {
   opts->rev_renumber_map[newnum] = opts->rev_renumber_map[num];
   opts->renumber_map[num] = newnum++;
  }



  else
  {
   opts->renumber_map[num] = opts->renumber_map[opts->renumber_map[num]];
  }
 }
}
