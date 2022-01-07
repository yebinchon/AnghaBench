
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * root; } ;
typedef TYPE_1__ fz_xml_doc ;
typedef int fz_xml ;



fz_xml *fz_xml_root(fz_xml_doc *xml)
{
 return xml ? xml->root : ((void*)0);
}
