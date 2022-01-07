
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t xml_encoding ;
typedef int WCHAR ;
struct TYPE_2__ {int const* name; } ;


 TYPE_1__* xml_encoding_map ;

const WCHAR *get_encoding_name(xml_encoding encoding)
{
    return xml_encoding_map[encoding].name;
}
