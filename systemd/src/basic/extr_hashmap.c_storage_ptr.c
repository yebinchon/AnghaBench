
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {void* storage; } ;
struct TYPE_5__ {void* storage; } ;
struct TYPE_7__ {TYPE_2__ direct; TYPE_1__ indirect; scalar_t__ has_indirect; } ;
typedef TYPE_3__ HashmapBase ;



__attribute__((used)) static void *storage_ptr(HashmapBase *h) {
        return h->has_indirect ? h->indirect.storage
                               : h->direct.storage;
}
