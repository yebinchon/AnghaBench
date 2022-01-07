
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pool; } ;
typedef TYPE_1__ fz_xml_doc ;
typedef int fz_context ;


 int fz_drop_pool (int *,int ) ;

void fz_drop_xml(fz_context *ctx, fz_xml_doc *xml)
{
 if (xml)
  fz_drop_pool(ctx, xml->pool);
}
