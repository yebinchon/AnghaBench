
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlstr_t ;
typedef int xmlbuf_t ;
typedef int UNICODE_STRING ;
typedef scalar_t__ BOOL ;


 int DPRINT (char*,int *) ;
 int DPRINT1 (char*,int *,...) ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int descriptionW ;
 scalar_t__ next_xml_attr (int *,int *,int *,scalar_t__*,scalar_t__*) ;
 scalar_t__ next_xml_elem (int *,int *) ;
 scalar_t__ parse_end_element (int *) ;
 int parse_text_content (int *,int *) ;
 scalar_t__ parse_unknown_elem (int *,int *) ;
 int xmlstr2unicode (int *) ;
 scalar_t__ xmlstr_cmp_end (int *,int ) ;

__attribute__((used)) static BOOL parse_description_elem(xmlbuf_t* xmlbuf)
{
    xmlstr_t elem, content, attr_name, attr_value;
    BOOL end = FALSE, ret = TRUE, error = FALSE;

    UNICODE_STRING elem1U, elem2U;

    while (next_xml_attr(xmlbuf, &attr_name, &attr_value, &error, &end))
    {
        elem1U = xmlstr2unicode(&attr_name);
        elem2U = xmlstr2unicode(&attr_value);
        DPRINT1("unknown attr %s=%s\n", &elem1U, &elem2U);
    }

    if (error) return FALSE;
    if (end) return TRUE;

    if (!parse_text_content(xmlbuf, &content))
        return FALSE;

    elem1U = xmlstr2unicode(&content);
    DPRINT("Got description %wZ\n", &elem1U);

    while (ret && (ret = next_xml_elem(xmlbuf, &elem)))
    {
        if (xmlstr_cmp_end(&elem, descriptionW))
        {
            ret = parse_end_element(xmlbuf);
            break;
        }
        else
        {
            elem1U = xmlstr2unicode(&elem);
            DPRINT1("unknown elem %wZ\n", &elem1U);
            ret = parse_unknown_elem(xmlbuf, &elem);
        }
    }

    return ret;
}
