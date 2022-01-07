
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buffer; } ;
typedef TYPE_1__ img_document ;
typedef int fz_document ;
typedef int fz_context ;


 int fz_drop_buffer (int *,int ) ;

__attribute__((used)) static void
img_drop_document(fz_context *ctx, fz_document *doc_)
{
 img_document *doc = (img_document*)doc_;
 fz_drop_buffer(ctx, doc->buffer);
}
