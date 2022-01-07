
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xmlElementPtr ;
typedef TYPE_2__* xmlDocPtr ;
typedef int xmlChar ;
struct TYPE_6__ {int * extSubset; int * intSubset; } ;
struct TYPE_5__ {int etype; } ;







 TYPE_1__* xmlGetDtdElementDesc (int *,int const*) ;

int
xmlIsMixedElement(xmlDocPtr doc, const xmlChar *name) {
    xmlElementPtr elemDecl;

    if ((doc == ((void*)0)) || (doc->intSubset == ((void*)0))) return(-1);

    elemDecl = xmlGetDtdElementDesc(doc->intSubset, name);
    if ((elemDecl == ((void*)0)) && (doc->extSubset != ((void*)0)))
 elemDecl = xmlGetDtdElementDesc(doc->extSubset, name);
    if (elemDecl == ((void*)0)) return(-1);
    switch (elemDecl->etype) {
 case 128:
     return(-1);
 case 131:
     return(0);
        case 130:




 case 132:
 case 129:
     return(1);
    }
    return(1);
}
