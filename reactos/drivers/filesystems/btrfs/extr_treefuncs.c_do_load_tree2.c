
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {TYPE_3__* tree; int address; } ;
typedef TYPE_2__ tree_holder ;
typedef int tree_data ;
struct TYPE_7__ {scalar_t__ level; } ;
struct TYPE_9__ {int * paritem; TYPE_1__ header; struct TYPE_9__* parent; } ;
typedef TYPE_3__ tree ;
typedef int root ;
typedef int device_extension ;
typedef int NTSTATUS ;


 int ERR (char*,int ) ;
 int NT_SUCCESS (int ) ;
 int STATUS_SUCCESS ;
 int int3 ;
 int load_tree (int *,int ,int *,int *,TYPE_3__**) ;

__attribute__((used)) static NTSTATUS do_load_tree2(device_extension* Vcb, tree_holder* th, uint8_t* buf, root* r, tree* t, tree_data* td) {
    if (!th->tree) {
        NTSTATUS Status;
        tree* nt;

        Status = load_tree(Vcb, th->address, buf, r, &nt);
        if (!NT_SUCCESS(Status)) {
            ERR("load_tree returned %08x\n", Status);
            return Status;
        }

        nt->parent = t;





        nt->paritem = td;

        th->tree = nt;
    }

    return STATUS_SUCCESS;
}
