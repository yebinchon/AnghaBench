
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_reader_t ;


 int strcmp (char const*,char const*) ;
 char* xml_ReaderNextAttr (int *,char const**) ;

__attribute__((used)) static const char *get_node_attribute(xml_reader_t *p_xml_reader, const char *psz_name)
{
    const char *name, *value;
    while ((name = xml_ReaderNextAttr(p_xml_reader, &value)) != ((void*)0))
    {
        if (!strcmp(name, psz_name))
            return value;
    }
    return ((void*)0);
}
