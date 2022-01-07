
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int count; int len; TYPE_5__* tail; } ;
typedef TYPE_1__ quicklist ;
typedef int longstr ;
struct TYPE_7__ {int zl; } ;


 unsigned int ll2string (char*,int,long long) ;
 int quicklistDelIndex (TYPE_1__*,TYPE_5__*,unsigned char**) ;
 int quicklistPushHead (TYPE_1__*,unsigned char*,unsigned int) ;
 int ziplistGet (unsigned char*,unsigned char**,unsigned int*,long long*) ;
 unsigned char* ziplistIndex (int ,int) ;

void quicklistRotate(quicklist *quicklist) {
    if (quicklist->count <= 1)
        return;


    unsigned char *p = ziplistIndex(quicklist->tail->zl, -1);
    unsigned char *value;
    long long longval;
    unsigned int sz;
    char longstr[32] = {0};
    ziplistGet(p, &value, &sz, &longval);


    if (!value) {

        sz = ll2string(longstr, sizeof(longstr), longval);
        value = (unsigned char *)longstr;
    }


    quicklistPushHead(quicklist, value, sz);




    if (quicklist->len == 1) {
        p = ziplistIndex(quicklist->tail->zl, -1);
    }


    quicklistDelIndex(quicklist, quicklist->tail, &p);
}
