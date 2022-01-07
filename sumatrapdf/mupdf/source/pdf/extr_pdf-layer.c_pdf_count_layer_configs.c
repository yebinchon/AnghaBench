
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* ocg; } ;
typedef TYPE_2__ pdf_document ;
typedef int fz_context ;
struct TYPE_4__ {int num_configs; } ;



int
pdf_count_layer_configs(fz_context *ctx, pdf_document *doc)
{

 if (!doc || !doc->ocg)
  return 0;
 return doc->ocg->num_configs;
}
