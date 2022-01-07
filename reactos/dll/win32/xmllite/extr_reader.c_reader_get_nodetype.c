
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nodetype; scalar_t__ attr; } ;
typedef TYPE_1__ xmlreader ;
typedef int XmlNodeType ;


 int XmlNodeType_Attribute ;

__attribute__((used)) static XmlNodeType reader_get_nodetype(const xmlreader *reader)
{



    return reader->attr ? XmlNodeType_Attribute : reader->nodetype;
}
