
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t XmlNodeType ;


 size_t _XmlNodeType_Last ;
 char const* wine_dbg_sprintf (char*,size_t) ;

__attribute__((used)) static const char *debugstr_nodetype(XmlNodeType nodetype)
{
    static const char * const type_names[] =
    {
        "None",
        "Element",
        "Attribute",
        "Text",
        "CDATA",
        "",
        "",
        "ProcessingInstruction",
        "Comment",
        "",
        "DocumentType",
        "",
        "",
        "Whitespace",
        "",
        "EndElement",
        "",
        "XmlDeclaration"
    };

    if (nodetype > _XmlNodeType_Last)
        return wine_dbg_sprintf("unknown type=%d", nodetype);

    return type_names[nodetype];
}
