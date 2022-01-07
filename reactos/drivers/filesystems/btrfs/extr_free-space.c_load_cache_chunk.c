
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int device_extension ;
struct TYPE_5__ {int cache_loaded; } ;
typedef TYPE_1__ chunk ;
typedef int PIRP ;
typedef int NTSTATUS ;


 int ERR (char*,int ) ;
 int NT_SUCCESS (int ) ;
 int STATUS_SUCCESS ;
 int load_free_space_cache (int *,TYPE_1__*,int ) ;
 int protect_superblocks (TYPE_1__*) ;

NTSTATUS load_cache_chunk(device_extension* Vcb, chunk* c, PIRP Irp) {
    NTSTATUS Status;

    if (c->cache_loaded)
        return STATUS_SUCCESS;

    Status = load_free_space_cache(Vcb, c, Irp);
    if (!NT_SUCCESS(Status)) {
        ERR("load_free_space_cache returned %08x\n", Status);
        return Status;
    }

    protect_superblocks(c);

    c->cache_loaded = 1;

    return STATUS_SUCCESS;
}
