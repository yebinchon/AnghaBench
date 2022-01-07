
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlHashTablePtr ;
typedef int xmlHashDeallocator ;
typedef int xmlChar ;


 int xmlHashRemoveEntry3 (int ,int const*,int const*,int *,int ) ;

int
xmlHashRemoveEntry2(xmlHashTablePtr table, const xmlChar *name,
   const xmlChar *name2, xmlHashDeallocator f) {
    return(xmlHashRemoveEntry3(table, name, name2, ((void*)0), f));
}
