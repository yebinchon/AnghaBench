
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_reflowable; } ;
typedef TYPE_1__ fz_document ;
typedef int fz_context ;



int
fz_is_document_reflowable(fz_context *ctx, fz_document *doc)
{
 return doc ? doc->is_reflowable : 0;
}
