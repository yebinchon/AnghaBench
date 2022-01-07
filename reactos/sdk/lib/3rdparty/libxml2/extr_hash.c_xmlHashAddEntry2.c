
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlHashTablePtr ;
typedef int xmlChar ;


 int xmlHashAddEntry3 (int ,int const*,int const*,int *,void*) ;

int
xmlHashAddEntry2(xmlHashTablePtr table, const xmlChar *name,
         const xmlChar *name2, void *userdata) {
    return(xmlHashAddEntry3(table, name, name2, ((void*)0), userdata));
}
