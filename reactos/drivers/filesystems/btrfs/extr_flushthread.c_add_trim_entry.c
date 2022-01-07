
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* uint64_t ;
struct TYPE_5__ {int list_entry; void* size; void* address; } ;
typedef TYPE_1__ space ;
struct TYPE_6__ {int trim_list; int num_trim_entries; } ;
typedef TYPE_2__ device ;


 int ALLOC_TAG ;
 int ERR (char*) ;
 TYPE_1__* ExAllocatePoolWithTag (int ,int,int ) ;
 int InsertTailList (int *,int *) ;
 int PagedPool ;

__attribute__((used)) static void add_trim_entry(device* dev, uint64_t address, uint64_t size) {
    space* s = ExAllocatePoolWithTag(PagedPool, sizeof(space), ALLOC_TAG);
    if (!s) {
        ERR("out of memory\n");
        return;
    }

    s->address = address;
    s->size = size;
    dev->num_trim_entries++;

    InsertTailList(&dev->trim_list, &s->list_entry);
}
