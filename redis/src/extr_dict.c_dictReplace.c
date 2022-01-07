
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dictEntry ;
typedef int dict ;


 int * dictAddRaw (int *,void*,int **) ;
 int dictFreeVal (int *,int *) ;
 int dictSetVal (int *,int *,void*) ;

int dictReplace(dict *d, void *key, void *val)
{
    dictEntry *entry, *existing, auxentry;



    entry = dictAddRaw(d,key,&existing);
    if (entry) {
        dictSetVal(d, entry, val);
        return 1;
    }






    auxentry = *existing;
    dictSetVal(d, existing, val);
    dictFreeVal(d, &auxentry);
    return 0;
}
