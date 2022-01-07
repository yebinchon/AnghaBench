
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlHashTablePtr ;
typedef int xmlChar ;


 void* xmlHashLookup3 (int ,int const*,int *,int *) ;

void *
xmlHashLookup(xmlHashTablePtr table, const xmlChar *name) {
    return(xmlHashLookup3(table, name, ((void*)0), ((void*)0)));
}
