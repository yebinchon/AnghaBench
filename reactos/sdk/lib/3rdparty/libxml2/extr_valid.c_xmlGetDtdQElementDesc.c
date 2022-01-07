
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


 int * xmlHashLookup2 (scalar_t__,int const*,int const*) ;

xmlElementPtr
xmlGetDtdQElementDesc(xmlDtdPtr dtd, const xmlChar *name,
               const xmlChar *prefix) {
    xmlElementTablePtr table;

    if (dtd == ((void*)0)) return(((void*)0));
    if (dtd->elements == ((void*)0)) return(((void*)0));
    table = (xmlElementTablePtr) dtd->elements;

    return(xmlHashLookup2(table, name, prefix));
}
