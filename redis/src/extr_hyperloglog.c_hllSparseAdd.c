
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int robj ;


 int hllPatLen (unsigned char*,size_t,long*) ;
 int hllSparseSet (int *,long,int ) ;

int hllSparseAdd(robj *o, unsigned char *ele, size_t elesize) {
    long index;
    uint8_t count = hllPatLen(ele,elesize,&index);

    return hllSparseSet(o,index,count);
}
