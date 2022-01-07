
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int pdf_drop_obj (int *,int *) ;

__attribute__((used)) static void
pdf_t3_free_resources(fz_context *ctx, void *doc, void *rdb_)
{
 pdf_obj *rdb = (pdf_obj *)rdb_;
 pdf_drop_obj(ctx, rdb);
}
