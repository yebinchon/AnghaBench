
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ xmlElementTablePtr ;
typedef int * xmlElementPtr ;
typedef TYPE_1__* xmlDtdPtr ;
typedef int xmlChar ;
struct TYPE_3__ {int * elements; } ;


 int xmlFree (int *) ;
 int * xmlHashLookup2 (scalar_t__,int const*,int *) ;
 int * xmlSplitQName2 (int const*,int **) ;

xmlElementPtr
xmlGetDtdElementDesc(xmlDtdPtr dtd, const xmlChar *name) {
    xmlElementTablePtr table;
    xmlElementPtr cur;
    xmlChar *uqname = ((void*)0), *prefix = ((void*)0);

    if ((dtd == ((void*)0)) || (name == ((void*)0))) return(((void*)0));
    if (dtd->elements == ((void*)0))
 return(((void*)0));
    table = (xmlElementTablePtr) dtd->elements;

    uqname = xmlSplitQName2(name, &prefix);
    if (uqname != ((void*)0))
        name = uqname;
    cur = xmlHashLookup2(table, name, prefix);
    if (prefix != ((void*)0)) xmlFree(prefix);
    if (uqname != ((void*)0)) xmlFree(uqname);
    return(cur);
}
