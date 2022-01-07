
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * output_accelerator; } ;
typedef TYPE_1__ fz_document ;
typedef int fz_context ;



int fz_document_supports_accelerator(fz_context *ctx, fz_document *doc)
{
 if (doc == ((void*)0))
  return 0;
 return (doc->output_accelerator) != ((void*)0);
}
