
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int device_extension ;
struct TYPE_3__ {int offset; } ;
typedef TYPE_1__ TREE_BLOCK_REF ;
typedef int PIRP ;
typedef int NTSTATUS ;


 int TYPE_TREE_BLOCK_REF ;
 int decrease_extent_refcount (int *,int ,int ,int ,TYPE_1__*,int *,int ,int ,int,int ) ;

NTSTATUS decrease_extent_refcount_tree(device_extension* Vcb, uint64_t address, uint64_t size, uint64_t root,
                                       uint8_t level, PIRP Irp) {
    TREE_BLOCK_REF tbr;

    tbr.offset = root;

    return decrease_extent_refcount(Vcb, address, size, TYPE_TREE_BLOCK_REF, &tbr, ((void*)0) , level, 0, 0, Irp);
}
