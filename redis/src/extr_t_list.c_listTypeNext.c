
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ encoding; int iter; TYPE_1__* subject; } ;
typedef TYPE_2__ listTypeIterator ;
struct TYPE_8__ {int entry; TYPE_2__* li; } ;
typedef TYPE_3__ listTypeEntry ;
struct TYPE_6__ {scalar_t__ encoding; } ;


 scalar_t__ OBJ_ENCODING_QUICKLIST ;
 int quicklistNext (int ,int *) ;
 int serverAssert (int) ;
 int serverPanic (char*) ;

int listTypeNext(listTypeIterator *li, listTypeEntry *entry) {

    serverAssert(li->subject->encoding == li->encoding);

    entry->li = li;
    if (li->encoding == OBJ_ENCODING_QUICKLIST) {
        return quicklistNext(li->iter, &entry->entry);
    } else {
        serverPanic("Unknown list encoding");
    }
    return 0;
}
