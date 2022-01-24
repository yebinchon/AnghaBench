#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  revision; int /*<<< orphan*/  build; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;
struct assembly_identity {TYPE_3__ version; int /*<<< orphan*/  arch; int /*<<< orphan*/  name; } ;
struct actctx_loader {unsigned int num_dependencies; int allocated_dependencies; struct assembly_identity* dependencies; TYPE_2__* actctx; } ;
struct TYPE_5__ {unsigned int num_assemblies; TYPE_1__* assemblies; } ;
struct TYPE_4__ {struct assembly_identity id; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct assembly_identity*,unsigned int) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC4 (struct assembly_identity*,struct assembly_identity*) ; 

__attribute__((used)) static BOOL FUNC5(struct actctx_loader* acl,
                                      struct assembly_identity* ai)
{
    unsigned int i;

    /* check if we already have that assembly */

    for (i = 0; i < acl->actctx->num_assemblies; i++)
        if (FUNC4( ai, &acl->actctx->assemblies[i].id ))
        {
            FUNC0( "reusing existing assembly for %S arch %S version %u.%u.%u.%u\n",
                   ai->name, ai->arch, ai->version.major, ai->version.minor,
                   ai->version.build, ai->version.revision );
            return TRUE;
        }

    for (i = 0; i < acl->num_dependencies; i++)
        if (FUNC4( ai, &acl->dependencies[i] ))
        {
            FUNC0( "reusing existing dependency for %S arch %S version %u.%u.%u.%u\n",
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
            ptr = FUNC3(FUNC2(), 0, acl->dependencies,
                                    new_count * sizeof(acl->dependencies[0]));
        }
        else
        {
            new_count = 4;
            ptr = FUNC1(FUNC2(), 0, new_count * sizeof(acl->dependencies[0]));
        }
        if (!ptr) return FALSE;
        acl->dependencies = ptr;
        acl->allocated_dependencies = new_count;
    }
    acl->dependencies[acl->num_dependencies++] = *ai;

    return TRUE;
}