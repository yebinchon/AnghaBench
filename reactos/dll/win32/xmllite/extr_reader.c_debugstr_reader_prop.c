
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t XmlReaderProperty ;


 size_t _XmlReaderProperty_Last ;
 char const* wine_dbg_sprintf (char*,size_t) ;

__attribute__((used)) static const char *debugstr_reader_prop(XmlReaderProperty prop)
{
    static const char * const prop_names[] =
    {
        "MultiLanguage",
        "ConformanceLevel",
        "RandomAccess",
        "XmlResolver",
        "DtdProcessing",
        "ReadState",
        "MaxElementDepth",
        "MaxEntityExpansion"
    };

    if (prop > _XmlReaderProperty_Last)
        return wine_dbg_sprintf("unknown property=%d", prop);

    return prop_names[prop];
}
