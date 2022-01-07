
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlstr_t ;
typedef int xmlbuf_t ;
typedef int UNICODE_STRING ;
typedef int BOOL ;


 int DPRINT1 (char*,int *,int *) ;
 scalar_t__ next_xml_attr (int *,int *,int *,int*,int*) ;
 int xmlstr2unicode (int *) ;

__attribute__((used)) static BOOL parse_expect_no_attr(xmlbuf_t* xmlbuf, BOOL* end)
{
    xmlstr_t attr_name, attr_value;
    UNICODE_STRING attr_nameU, attr_valueU;
    BOOL error;

    while (next_xml_attr(xmlbuf, &attr_name, &attr_value, &error, end))
    {
        attr_nameU = xmlstr2unicode(&attr_name);
        attr_valueU = xmlstr2unicode(&attr_value);
        DPRINT1( "unexpected attr %wZ=%wZ\n", &attr_nameU,
             &attr_valueU);
    }
    return !error;
}
