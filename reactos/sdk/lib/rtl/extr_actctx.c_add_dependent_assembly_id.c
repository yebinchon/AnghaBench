
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int revision; int build; int minor; int major; } ;
struct assembly_identity {TYPE_3__ version; int arch; int name; } ;
struct actctx_loader {unsigned int num_dependencies; int allocated_dependencies; struct assembly_identity* dependencies; TYPE_2__* actctx; } ;
struct TYPE_5__ {unsigned int num_assemblies; TYPE_1__* assemblies; } ;
struct TYPE_4__ {struct assembly_identity id; } ;
typedef int BOOL ;


 int DPRINT (char*,int ,int ,int ,int ,int ,int ) ;
 int FALSE ;
 void* RtlAllocateHeap (int ,int ,unsigned int) ;
 int RtlGetProcessHeap () ;
 void* RtlReAllocateHeap (int ,int ,struct assembly_identity*,unsigned int) ;
 int TRUE ;
 scalar_t__ is_matching_identity (struct assembly_identity*,struct assembly_identity*) ;

__attribute__((used)) static BOOL add_dependent_assembly_id(struct actctx_loader* acl,
                                      struct assembly_identity* ai)
{
    unsigned int i;



    for (i = 0; i < acl->actctx->num_assemblies; i++)
        if (is_matching_identity( ai, &acl->actctx->assemblies[i].id ))
        {
            DPRINT( "reusing existing assembly for %S arch %S version %u.%u.%u.%u\n",
                   ai->name, ai->arch, ai->version.major, ai->version.minor,
                   ai->version.build, ai->version.revision );
            return TRUE;
        }

    for (i = 0; i < acl->num_dependencies; i++)
        if (is_matching_identity( ai, &acl->dependencies[i] ))
        {
            DPRINT( "reusing existing dependency for %S arch %S version %u.%u.%u.%u\n",
                   ai->name, ai->arch, ai->version.major, ai->version.minor,
                   ai->version.build, ai->version.revision );
            return TRUE;
        }

    if (acl->num_dependencies == acl->allocated_dependencies)
    {
        void *ptr;
        unsigned int new_count;
        if (acl->dependencies)
        {
            new_count = acl->allocated_dependencies * 2;
            ptr = RtlReAllocateHeap(RtlGetProcessHeap(), 0, acl->dependencies,
                                    new_count * sizeof(acl->dependencies[0]));
        }
        else
        {
            new_count = 4;
            ptr = RtlAllocateHeap(RtlGetProcessHeap(), 0, new_count * sizeof(acl->dependencies[0]));
        }
        if (!ptr) return FALSE;
        acl->dependencies = ptr;
        acl->allocated_dependencies = new_count;
    }
    acl->dependencies[acl->num_dependencies++] = *ai;

    return TRUE;
}
