
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlHashTablePtr ;
typedef int xmlChar ;


 int xmlHashAddEntry3 (int ,int const*,int *,int *,void*) ;

int
xmlHashAddEntry(xmlHashTablePtr table, const xmlChar *name, void *userdata) {
    return(xmlHashAddEntry3(table, name, ((void*)0), ((void*)0), userdata));
}
