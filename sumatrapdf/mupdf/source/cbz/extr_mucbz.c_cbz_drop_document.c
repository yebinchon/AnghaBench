
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int fz_document ;
typedef int fz_context ;
struct TYPE_2__ {scalar_t__ page; int arch; } ;
typedef TYPE_1__ cbz_document ;


 int fz_drop_archive (int *,int ) ;
 int fz_free (int *,char**) ;

__attribute__((used)) static void
cbz_drop_document(fz_context *ctx, fz_document *doc_)
{
 cbz_document *doc = (cbz_document*)doc_;
 fz_drop_archive(ctx, doc->arch);
 fz_free(ctx, (char **)doc->page);
}
