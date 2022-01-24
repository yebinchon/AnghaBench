#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct _cmsContext_struct {void** chunks; } ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  size_t _cmsMemoryClient ;
struct TYPE_2__ {void** chunks; } ;

/* Variables and functions */
 size_t MemoryClientMax ; 
 size_t UserPtr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct _cmsContext_struct* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmsERROR_INTERNAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__ globalContext ; 

void* FUNC3(cmsContext ContextID, _cmsMemoryClient mc)
{
    struct _cmsContext_struct* ctx;
    void *ptr;

    if ((int) mc < 0 || mc >= MemoryClientMax) {

           FUNC2(ContextID, cmsERROR_INTERNAL, "Bad context client -- possible corruption");

           // This is catastrophic. Should never reach here
           FUNC0(0);

           // Reverts to global context
           return globalContext.chunks[UserPtr];
    }

    ctx = FUNC1(ContextID);
    ptr = ctx ->chunks[mc];

    if (ptr != NULL)
        return ptr;

    // A null ptr means no special settings for that context, and this
    // reverts to Context0 globals
    return globalContext.chunks[mc];
}