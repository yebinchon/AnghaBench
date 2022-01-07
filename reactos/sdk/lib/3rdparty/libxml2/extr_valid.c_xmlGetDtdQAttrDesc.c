
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xmlDtdPtr ;
typedef int xmlChar ;
typedef scalar_t__ xmlAttributeTablePtr ;
typedef int * xmlAttributePtr ;
struct TYPE_3__ {int * attributes; } ;


 int * xmlHashLookup3 (scalar_t__,int const*,int const*,int const*) ;

xmlAttributePtr
xmlGetDtdQAttrDesc(xmlDtdPtr dtd, const xmlChar *elem, const xmlChar *name,
           const xmlChar *prefix) {
    xmlAttributeTablePtr table;

    if (dtd == ((void*)0)) return(((void*)0));
    if (dtd->attributes == ((void*)0)) return(((void*)0));
    table = (xmlAttributeTablePtr) dtd->attributes;

    return(xmlHashLookup3(table, name, prefix, elem));
}
