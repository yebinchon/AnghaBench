
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlHashTablePtr ;
typedef int xmlChar ;


 void* xmlHashQLookup3 (int ,int const*,int const*,int *,int *,int *,int *) ;

void *
xmlHashQLookup(xmlHashTablePtr table, const xmlChar *prefix,
               const xmlChar *name) {
    return(xmlHashQLookup3(table, prefix, name, ((void*)0), ((void*)0), ((void*)0), ((void*)0)));
}
