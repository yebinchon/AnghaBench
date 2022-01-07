
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_10__ {TYPE_1__* item; } ;
typedef TYPE_2__ traverse_ptr ;
struct TYPE_11__ {scalar_t__ parent; int Vcb; scalar_t__ root; } ;
typedef TYPE_3__ send_context ;
typedef int ULONG ;
struct TYPE_12__ {int offset; int obj_type; int obj_id; } ;
struct TYPE_9__ {int key; } ;
typedef int NTSTATUS ;
typedef TYPE_4__ KEY ;


 int ERR (char*,int ) ;
 int NT_SUCCESS (int ) ;
 int STATUS_SUCCESS ;
 int SUBVOL_ROOT_INODE ;
 int TYPE_DIR_ITEM ;
 int calc_crc32c (int,int *,int ) ;
 int find_item (int ,scalar_t__,TYPE_2__*,TYPE_4__*,int,int *) ;
 int keycmp (TYPE_4__,int ) ;
 char* uint64_to_char (scalar_t__,char*) ;

__attribute__((used)) static NTSTATUS get_orphan_name(send_context* context, uint64_t inode, uint64_t generation, char* name) {
    char *ptr, *ptr2;
    uint64_t index = 0;
    KEY searchkey;

    name[0] = 'o';

    ptr = uint64_to_char(inode, &name[1]);
    *ptr = '-'; ptr++;
    ptr = uint64_to_char(generation, ptr);
    *ptr = '-'; ptr++;
    ptr2 = ptr;

    searchkey.obj_id = SUBVOL_ROOT_INODE;
    searchkey.obj_type = TYPE_DIR_ITEM;

    do {
        NTSTATUS Status;
        traverse_ptr tp;

        ptr = uint64_to_char(index, ptr);
        *ptr = 0;

        searchkey.offset = calc_crc32c(0xfffffffe, (uint8_t*)name, (ULONG)(ptr - name));

        Status = find_item(context->Vcb, context->root, &tp, &searchkey, 0, ((void*)0));
        if (!NT_SUCCESS(Status)) {
            ERR("find_item returned %08x\n", Status);
            return Status;
        }

        if (!keycmp(searchkey, tp.item->key))
            goto cont;

        if (context->parent) {
            Status = find_item(context->Vcb, context->parent, &tp, &searchkey, 0, ((void*)0));
            if (!NT_SUCCESS(Status)) {
                ERR("find_item returned %08x\n", Status);
                return Status;
            }

            if (!keycmp(searchkey, tp.item->key))
                goto cont;
        }

        return STATUS_SUCCESS;

cont:
        index++;
        ptr = ptr2;
    } while (1);
}
