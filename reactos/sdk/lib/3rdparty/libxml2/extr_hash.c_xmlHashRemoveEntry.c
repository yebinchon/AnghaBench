
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlHashTablePtr ;
typedef int xmlHashDeallocator ;
typedef int xmlChar ;


 int xmlHashRemoveEntry3 (int ,int const*,int *,int *,int ) ;

int xmlHashRemoveEntry(xmlHashTablePtr table, const xmlChar *name,
         xmlHashDeallocator f) {
    return(xmlHashRemoveEntry3(table, name, ((void*)0), ((void*)0), f));
}
