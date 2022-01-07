
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xml_encoding ;
typedef int WCHAR ;
struct TYPE_3__ {int enc; int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int XmlEncoding_Unknown ;
 int strcmpiW (int ,int const*) ;
 int strncmpiW (int ,int const*,int) ;
 TYPE_1__* xml_encoding_map ;

xml_encoding parse_encoding_name(const WCHAR *name, int len)
{
    int min, max, n, c;

    if (!name) return XmlEncoding_Unknown;

    min = 0;
    max = ARRAY_SIZE(xml_encoding_map) - 1;

    while (min <= max)
    {
        n = (min+max)/2;

        if (len != -1)
            c = strncmpiW(xml_encoding_map[n].name, name, len);
        else
            c = strcmpiW(xml_encoding_map[n].name, name);
        if (!c)
            return xml_encoding_map[n].enc;

        if (c > 0)
            max = n-1;
        else
            min = n+1;
    }

    return XmlEncoding_Unknown;
}
