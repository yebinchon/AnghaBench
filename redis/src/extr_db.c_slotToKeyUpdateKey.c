
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ptr; } ;
typedef TYPE_2__ robj ;
struct TYPE_7__ {TYPE_1__* cluster; } ;
struct TYPE_5__ {int* slots_keys_count; int slots_to_keys; } ;


 unsigned int keyHashSlot (int ,size_t) ;
 int memcpy (unsigned char*,int ,size_t) ;
 int raxInsert (int ,unsigned char*,size_t,int *,int *) ;
 int raxRemove (int ,unsigned char*,size_t,int *) ;
 size_t sdslen (int ) ;
 TYPE_4__ server ;
 int zfree (unsigned char*) ;
 unsigned char* zmalloc (size_t) ;

void slotToKeyUpdateKey(robj *key, int add) {
    unsigned int hashslot = keyHashSlot(key->ptr,sdslen(key->ptr));
    unsigned char buf[64];
    unsigned char *indexed = buf;
    size_t keylen = sdslen(key->ptr);

    server.cluster->slots_keys_count[hashslot] += add ? 1 : -1;
    if (keylen+2 > 64) indexed = zmalloc(keylen+2);
    indexed[0] = (hashslot >> 8) & 0xff;
    indexed[1] = hashslot & 0xff;
    memcpy(indexed+2,key->ptr,keylen);
    if (add) {
        raxInsert(server.cluster->slots_to_keys,indexed,keylen+2,((void*)0),((void*)0));
    } else {
        raxRemove(server.cluster->slots_to_keys,indexed,keylen+2,((void*)0));
    }
    if (indexed != buf) zfree(indexed);
}
