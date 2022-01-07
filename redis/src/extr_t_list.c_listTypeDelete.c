
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int iter; } ;
typedef TYPE_2__ listTypeIterator ;
struct TYPE_8__ {int entry; TYPE_1__* li; } ;
typedef TYPE_3__ listTypeEntry ;
struct TYPE_6__ {scalar_t__ encoding; } ;


 scalar_t__ OBJ_ENCODING_QUICKLIST ;
 int quicklistDelEntry (int ,int *) ;
 int serverPanic (char*) ;

void listTypeDelete(listTypeIterator *iter, listTypeEntry *entry) {
    if (entry->li->encoding == OBJ_ENCODING_QUICKLIST) {
        quicklistDelEntry(iter->iter, &entry->entry);
    } else {
        serverPanic("Unknown list encoding");
    }
}
