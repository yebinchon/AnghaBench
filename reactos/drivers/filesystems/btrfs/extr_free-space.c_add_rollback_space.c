
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint64_t ;
struct TYPE_4__ {int * chunk; void* length; void* address; int * list_size; int * list; } ;
typedef TYPE_1__ rollback_space ;
typedef int chunk ;
typedef int LIST_ENTRY ;


 int ALLOC_TAG ;
 int ERR (char*) ;
 TYPE_1__* ExAllocatePoolWithTag (int ,int,int ) ;
 int PagedPool ;
 int ROLLBACK_ADD_SPACE ;
 int ROLLBACK_SUBTRACT_SPACE ;
 int add_rollback (int *,int ,TYPE_1__*) ;

__attribute__((used)) static void add_rollback_space(LIST_ENTRY* rollback, bool add, LIST_ENTRY* list, LIST_ENTRY* list_size, uint64_t address, uint64_t length, chunk* c) {
    rollback_space* rs;

    rs = ExAllocatePoolWithTag(PagedPool, sizeof(rollback_space), ALLOC_TAG);
    if (!rs) {
        ERR("out of memory\n");
        return;
    }

    rs->list = list;
    rs->list_size = list_size;
    rs->address = address;
    rs->length = length;
    rs->chunk = c;

    add_rollback(rollback, add ? ROLLBACK_ADD_SPACE : ROLLBACK_SUBTRACT_SPACE, rs);
}
