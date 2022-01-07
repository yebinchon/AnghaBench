
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct assembly_version {int revision; int build; int minor; int major; } ;
struct actctx_loader {unsigned int num_dependencies; TYPE_1__* dependencies; } ;
struct TYPE_2__ {int name; struct assembly_version version; int delayed; int optional; } ;
typedef scalar_t__ NTSTATUS ;


 int DPRINT1 (char*,int ,int ,int ,int ,int ) ;
 scalar_t__ STATUS_SUCCESS ;
 scalar_t__ STATUS_SXS_CANT_GEN_ACTCTX ;
 scalar_t__ lookup_assembly (struct actctx_loader*,TYPE_1__*) ;

__attribute__((used)) static NTSTATUS parse_depend_manifests(struct actctx_loader* acl)
{
    NTSTATUS status = STATUS_SUCCESS;
    unsigned int i;

    for (i = 0; i < acl->num_dependencies; i++)
    {
        if (lookup_assembly(acl, &acl->dependencies[i]) != STATUS_SUCCESS)
        {
            if (!acl->dependencies[i].optional && !acl->dependencies[i].delayed)
            {
                const struct assembly_version *ver = &acl->dependencies[i].version;
                DPRINT1( "Could not find dependent assembly %S (%u.%u.%u.%u)\n",
                    acl->dependencies[i].name,
                    ver->major, ver->minor, ver->build, ver->revision );
                status = STATUS_SXS_CANT_GEN_ACTCTX;
                break;
            }
        }
    }

    return status;
}
