
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rio ;
typedef int int64_t ;


 int memrev64ifbe (int *) ;
 int rdbWriteRaw (int *,int *,int) ;

int rdbSaveMillisecondTime(rio *rdb, long long t) {
    int64_t t64 = (int64_t) t;
    memrev64ifbe(&t64);
    return rdbWriteRaw(rdb,&t64,8);
}
