
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int robj ;


 int slotToKeyUpdateKey (int *,int ) ;

void slotToKeyDel(robj *key) {
    slotToKeyUpdateKey(key,0);
}
