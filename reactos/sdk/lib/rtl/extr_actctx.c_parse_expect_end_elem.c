
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlstr_t ;
typedef int xmlbuf_t ;
typedef int WCHAR ;
typedef int UNICODE_STRING ;
typedef int BOOL ;


 int DPRINT1 (char*,int *) ;
 int FALSE ;
 int next_xml_elem (int *,int *) ;
 int parse_end_element (int *) ;
 int xml_elem_cmp_end (int *,int const*,int const*) ;
 int xmlstr2unicode (int *) ;

__attribute__((used)) static BOOL parse_expect_end_elem(xmlbuf_t *xmlbuf, const WCHAR *name, const WCHAR *namespace)
{
    xmlstr_t elem;
    UNICODE_STRING elemU;
    if (!next_xml_elem(xmlbuf, &elem)) return FALSE;
    if (!xml_elem_cmp_end(&elem, name, namespace))
    {
        elemU = xmlstr2unicode(&elem);
        DPRINT1( "unexpected element %wZ\n", &elemU );
        return FALSE;
    }
    return parse_end_element(xmlbuf);
}
