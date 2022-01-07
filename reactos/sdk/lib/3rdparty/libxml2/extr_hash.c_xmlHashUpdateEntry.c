
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlHashTablePtr ;
typedef int xmlHashDeallocator ;
typedef int xmlChar ;


 int xmlHashUpdateEntry3 (int ,int const*,int *,int *,void*,int ) ;

int
xmlHashUpdateEntry(xmlHashTablePtr table, const xmlChar *name,
            void *userdata, xmlHashDeallocator f) {
    return(xmlHashUpdateEntry3(table, name, ((void*)0), ((void*)0), userdata, f));
}
