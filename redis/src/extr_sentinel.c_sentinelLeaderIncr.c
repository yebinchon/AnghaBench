
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int dictEntry ;
typedef int dict ;


 int * dictAddRaw (int *,char*,int **) ;
 int dictGetUnsignedIntegerVal (int *) ;
 int dictSetUnsignedIntegerVal (int *,int) ;
 int serverAssert (int ) ;

int sentinelLeaderIncr(dict *counters, char *runid) {
    dictEntry *existing, *de;
    uint64_t oldval;

    de = dictAddRaw(counters,runid,&existing);
    if (existing) {
        oldval = dictGetUnsignedIntegerVal(existing);
        dictSetUnsignedIntegerVal(existing,oldval+1);
        return oldval+1;
    } else {
        serverAssert(de != ((void*)0));
        dictSetUnsignedIntegerVal(de,1);
        return 1;
    }
}
