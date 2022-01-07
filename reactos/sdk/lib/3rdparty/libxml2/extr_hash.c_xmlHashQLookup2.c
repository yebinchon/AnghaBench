
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlHashTablePtr ;
typedef int xmlChar ;


 void* xmlHashQLookup3 (int ,int const*,int const*,int const*,int const*,int *,int *) ;

void *
xmlHashQLookup2(xmlHashTablePtr table, const xmlChar *prefix,
                const xmlChar *name, const xmlChar *prefix2,
         const xmlChar *name2) {
    return(xmlHashQLookup3(table, prefix, name, prefix2, name2, ((void*)0), ((void*)0)));
}
