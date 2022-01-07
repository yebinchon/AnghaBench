
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int robj ;
struct TYPE_9__ {scalar_t__ key_len; scalar_t__ key; } ;
typedef TYPE_2__ raxIterator ;
struct TYPE_10__ {int * db; TYPE_1__* cluster; } ;
struct TYPE_8__ {scalar_t__* slots_keys_count; int slots_to_keys; } ;


 int * createStringObject (char*,scalar_t__) ;
 int dbDelete (int *,int *) ;
 int decrRefCount (int *) ;
 int raxNext (TYPE_2__*) ;
 int raxSeek (TYPE_2__*,char*,unsigned char*,int) ;
 int raxStart (TYPE_2__*,int ) ;
 int raxStop (TYPE_2__*) ;
 TYPE_3__ server ;

unsigned int delKeysInSlot(unsigned int hashslot) {
    raxIterator iter;
    int j = 0;
    unsigned char indexed[2];

    indexed[0] = (hashslot >> 8) & 0xff;
    indexed[1] = hashslot & 0xff;
    raxStart(&iter,server.cluster->slots_to_keys);
    while(server.cluster->slots_keys_count[hashslot]) {
        raxSeek(&iter,">=",indexed,2);
        raxNext(&iter);

        robj *key = createStringObject((char*)iter.key+2,iter.key_len-2);
        dbDelete(&server.db[0],key);
        decrRefCount(key);
        j++;
    }
    raxStop(&iter);
    return j;
}
