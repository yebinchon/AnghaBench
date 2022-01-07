
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ xmlNotationTablePtr ;
typedef int * xmlNotationPtr ;
typedef TYPE_1__* xmlDtdPtr ;
typedef int xmlChar ;
struct TYPE_3__ {int * notations; } ;


 int * xmlHashLookup (scalar_t__,int const*) ;

xmlNotationPtr
xmlGetDtdNotationDesc(xmlDtdPtr dtd, const xmlChar *name) {
    xmlNotationTablePtr table;

    if (dtd == ((void*)0)) return(((void*)0));
    if (dtd->notations == ((void*)0)) return(((void*)0));
    table = (xmlNotationTablePtr) dtd->notations;

    return(xmlHashLookup(table, name));
}
