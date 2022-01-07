
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dirty; } ;
typedef TYPE_1__ pdf_document ;
typedef int fz_context ;



int pdf_has_unsaved_changes(fz_context *ctx, pdf_document *doc)
{
 return doc->dirty;
}
