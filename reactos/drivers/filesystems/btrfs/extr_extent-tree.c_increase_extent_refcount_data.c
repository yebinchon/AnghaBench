
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint64_t ;
typedef int uint32_t ;
typedef int device_extension ;
struct TYPE_3__ {int count; void* offset; void* objid; void* root; } ;
typedef int PIRP ;
typedef int NTSTATUS ;
typedef TYPE_1__ EXTENT_DATA_REF ;


 int TYPE_EXTENT_DATA_REF ;
 int increase_extent_refcount (int *,void*,void*,int ,TYPE_1__*,int *,int ,int ) ;

NTSTATUS increase_extent_refcount_data(device_extension* Vcb, uint64_t address, uint64_t size, uint64_t root, uint64_t inode, uint64_t offset, uint32_t refcount, PIRP Irp) {
    EXTENT_DATA_REF edr;

    edr.root = root;
    edr.objid = inode;
    edr.offset = offset;
    edr.count = refcount;

    return increase_extent_refcount(Vcb, address, size, TYPE_EXTENT_DATA_REF, &edr, ((void*)0), 0, Irp);
}
