
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int page_object_lists; int hints_length; int hints_s; int linear_t; int linear_n; int linear_e; int linear_o; int linear_h1; int linear_h0; int linear_l; int rev_renumber_map; int renumber_map; int gen_list; int ofs_list; int use_list; } ;
typedef TYPE_1__ pdf_write_state ;
typedef int fz_context ;


 int fz_free (int *,int ) ;
 int page_objects_list_destroy (int *,int ) ;
 int pdf_drop_obj (int *,int ) ;

__attribute__((used)) static void finalise_write_state(fz_context *ctx, pdf_write_state *opts)
{
 fz_free(ctx, opts->use_list);
 fz_free(ctx, opts->ofs_list);
 fz_free(ctx, opts->gen_list);
 fz_free(ctx, opts->renumber_map);
 fz_free(ctx, opts->rev_renumber_map);
 pdf_drop_obj(ctx, opts->linear_l);
 pdf_drop_obj(ctx, opts->linear_h0);
 pdf_drop_obj(ctx, opts->linear_h1);
 pdf_drop_obj(ctx, opts->linear_o);
 pdf_drop_obj(ctx, opts->linear_e);
 pdf_drop_obj(ctx, opts->linear_n);
 pdf_drop_obj(ctx, opts->linear_t);
 pdf_drop_obj(ctx, opts->hints_s);
 pdf_drop_obj(ctx, opts->hints_length);
 page_objects_list_destroy(ctx, opts->page_object_lists);
}
