
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dictEntry ;
typedef int dict ;


 int dictFreeKey (int *,int *) ;
 int dictFreeVal (int *,int *) ;
 int zfree (int *) ;

void dictFreeUnlinkedEntry(dict *d, dictEntry *he) {
    if (he == ((void*)0)) return;
    dictFreeKey(d, he);
    dictFreeVal(d, he);
    zfree(he);
}
