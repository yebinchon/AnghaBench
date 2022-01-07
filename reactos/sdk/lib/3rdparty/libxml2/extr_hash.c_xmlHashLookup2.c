
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlHashTablePtr ;
typedef int xmlChar ;


 void* xmlHashLookup3 (int ,int const*,int const*,int *) ;

void *
xmlHashLookup2(xmlHashTablePtr table, const xmlChar *name,
       const xmlChar *name2) {
    return(xmlHashLookup3(table, name, name2, ((void*)0)));
}
