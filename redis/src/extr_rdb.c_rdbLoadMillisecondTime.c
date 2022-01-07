
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rio ;
typedef scalar_t__ int64_t ;


 long long LLONG_MAX ;
 int memrev64ifbe (scalar_t__*) ;
 scalar_t__ rioRead (int *,scalar_t__*,int) ;

long long rdbLoadMillisecondTime(rio *rdb, int rdbver) {
    int64_t t64;
    if (rioRead(rdb,&t64,8) == 0) return LLONG_MAX;
    if (rdbver >= 9)
        memrev64ifbe(&t64);
    return (long long)t64;
}
