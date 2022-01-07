
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlstr_t ;
typedef int xmlbuf_t ;
typedef int UNICODE_STRING ;
typedef scalar_t__ BOOL ;


 int DPRINT1 (char*,int *,...) ;
 scalar_t__ FALSE ;
 int asmv1W ;
 int bindingRedirectW ;
 int newVersionW ;
 scalar_t__ next_xml_attr (int *,int *,int *,scalar_t__*,scalar_t__*) ;
 int oldVersionW ;
 scalar_t__ parse_expect_end_elem (int *,int ,int ) ;
 int xmlstr2unicode (int *) ;
 scalar_t__ xmlstr_cmp (int *,int ) ;

__attribute__((used)) static BOOL parse_binding_redirect_elem(xmlbuf_t* xmlbuf)
{
    xmlstr_t attr_name, attr_value;
    UNICODE_STRING attr_valueU, attr_nameU;
    BOOL end = FALSE, error;

    while (next_xml_attr(xmlbuf, &attr_name, &attr_value, &error, &end))
    {
        attr_nameU = xmlstr2unicode(&attr_name);
        attr_valueU = xmlstr2unicode(&attr_value);

        if (xmlstr_cmp(&attr_name, oldVersionW))
        {
            DPRINT1("Not stored yet oldVersion=%wZ\n", &attr_valueU);
        }
        else if (xmlstr_cmp(&attr_name, newVersionW))
        {
            DPRINT1("Not stored yet newVersion=%wZ\n", &attr_valueU);
        }
        else
        {
            DPRINT1("unknown attr %wZ=%wZ\n", &attr_nameU, &attr_valueU);
        }
    }

    if (error || end) return end;
    return parse_expect_end_elem(xmlbuf, bindingRedirectW, asmv1W);
}
