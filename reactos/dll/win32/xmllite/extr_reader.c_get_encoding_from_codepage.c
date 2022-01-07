
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xml_encoding ;
typedef scalar_t__ UINT ;
struct TYPE_3__ {scalar_t__ cp; int enc; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int XmlEncoding_Unknown ;
 TYPE_1__* xml_encoding_map ;

xml_encoding get_encoding_from_codepage(UINT codepage)
{
    int i;
    for (i = 0; i < ARRAY_SIZE(xml_encoding_map); i++)
    {
        if (xml_encoding_map[i].cp == codepage) return xml_encoding_map[i].enc;
    }
    return XmlEncoding_Unknown;
}
