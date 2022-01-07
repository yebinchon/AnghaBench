
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xmlDtdPtr ;
typedef int const xmlChar ;
typedef int * xmlAttributeTablePtr ;
typedef int * xmlAttributePtr ;
struct TYPE_3__ {int * attributes; } ;


 int xmlFree (int const*) ;
 int * xmlHashLookup3 (int *,int const*,int const*,int const*) ;
 int const* xmlSplitQName2 (int const*,int const**) ;

xmlAttributePtr
xmlGetDtdAttrDesc(xmlDtdPtr dtd, const xmlChar *elem, const xmlChar *name) {
    xmlAttributeTablePtr table;
    xmlAttributePtr cur;
    xmlChar *uqname = ((void*)0), *prefix = ((void*)0);

    if (dtd == ((void*)0)) return(((void*)0));
    if (dtd->attributes == ((void*)0)) return(((void*)0));

    table = (xmlAttributeTablePtr) dtd->attributes;
    if (table == ((void*)0))
 return(((void*)0));

    uqname = xmlSplitQName2(name, &prefix);

    if (uqname != ((void*)0)) {
 cur = xmlHashLookup3(table, uqname, prefix, elem);
 if (prefix != ((void*)0)) xmlFree(prefix);
 if (uqname != ((void*)0)) xmlFree(uqname);
    } else
 cur = xmlHashLookup3(table, name, ((void*)0), elem);
    return(cur);
}
