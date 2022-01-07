
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* root; } ;
typedef TYPE_2__ fz_xml_doc ;
struct TYPE_8__ {TYPE_1__* up; } ;
typedef TYPE_3__ fz_xml ;
typedef int fz_context ;
struct TYPE_6__ {int * down; } ;



void fz_detach_xml(fz_context *ctx, fz_xml_doc *xml, fz_xml *node)
{
 if (node->up)
  node->up->down = ((void*)0);
 xml->root = node;
}
