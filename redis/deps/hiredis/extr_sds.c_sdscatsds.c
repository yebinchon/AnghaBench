
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sds ;


 int sdscatlen (int ,int const,int ) ;
 int sdslen (int const) ;

sds sdscatsds(sds s, const sds t) {
    return sdscatlen(s, t, sdslen(t));
}
