
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int * xmlElementTablePtr ;
typedef TYPE_2__* xmlElementPtr ;
typedef int xmlElement ;
typedef TYPE_3__* xmlDtdPtr ;
typedef int * xmlDictPtr ;
typedef int const xmlChar ;
struct TYPE_11__ {int * elements; TYPE_1__* doc; } ;
struct TYPE_10__ {int etype; void* prefix; void* name; int type; } ;
struct TYPE_9__ {int * dict; } ;


 int XML_ELEMENT_DECL ;
 int XML_ELEMENT_TYPE_UNDEFINED ;
 int memset (TYPE_2__*,int ,int) ;
 int xmlFree (int const*) ;
 int xmlHashAddEntry2 (int *,int const*,int const*,TYPE_2__*) ;
 int * xmlHashCreateDict (int ,int *) ;
 TYPE_2__* xmlHashLookup2 (int *,int const*,int const*) ;
 scalar_t__ xmlMalloc (int) ;
 int const* xmlSplitQName2 (int const*,int const**) ;
 void* xmlStrdup (int const*) ;
 int xmlVErrMemory (int *,char*) ;

__attribute__((used)) static xmlElementPtr
xmlGetDtdElementDesc2(xmlDtdPtr dtd, const xmlChar *name, int create) {
    xmlElementTablePtr table;
    xmlElementPtr cur;
    xmlChar *uqname = ((void*)0), *prefix = ((void*)0);

    if (dtd == ((void*)0)) return(((void*)0));
    if (dtd->elements == ((void*)0)) {
 xmlDictPtr dict = ((void*)0);

 if (dtd->doc != ((void*)0))
     dict = dtd->doc->dict;

 if (!create)
     return(((void*)0));



 table = (xmlElementTablePtr) dtd->elements;
 if (table == ((void*)0)) {
     table = xmlHashCreateDict(0, dict);
     dtd->elements = (void *) table;
 }
 if (table == ((void*)0)) {
     xmlVErrMemory(((void*)0), "element table allocation failed");
     return(((void*)0));
 }
    }
    table = (xmlElementTablePtr) dtd->elements;

    uqname = xmlSplitQName2(name, &prefix);
    if (uqname != ((void*)0))
        name = uqname;
    cur = xmlHashLookup2(table, name, prefix);
    if ((cur == ((void*)0)) && (create)) {
 cur = (xmlElementPtr) xmlMalloc(sizeof(xmlElement));
 if (cur == ((void*)0)) {
     xmlVErrMemory(((void*)0), "malloc failed");
     return(((void*)0));
 }
 memset(cur, 0, sizeof(xmlElement));
 cur->type = XML_ELEMENT_DECL;




 cur->name = xmlStrdup(name);
 cur->prefix = xmlStrdup(prefix);
 cur->etype = XML_ELEMENT_TYPE_UNDEFINED;

 xmlHashAddEntry2(table, name, prefix, cur);
    }
    if (prefix != ((void*)0)) xmlFree(prefix);
    if (uqname != ((void*)0)) xmlFree(uqname);
    return(cur);
}
