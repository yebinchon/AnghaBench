#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* ZSTDv07_freeFunction ) (void* const,TYPE_2__*) ;
struct TYPE_7__ {struct TYPE_7__* dict; TYPE_5__* refContext; } ;
typedef  TYPE_2__ ZSTDv07_DDict ;
struct TYPE_6__ {void* opaque; int /*<<< orphan*/  (* customFree ) (void* const,TYPE_2__*) ;} ;
struct TYPE_8__ {TYPE_1__ customMem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 

size_t FUNC1(ZSTDv07_DDict* ddict)
{
    ZSTDv07_freeFunction const cFree = ddict->refContext->customMem.customFree;
    void* const opaque = ddict->refContext->customMem.opaque;
    FUNC0(ddict->refContext);
    cFree(opaque, ddict->dict);
    cFree(opaque, ddict);
    return 0;
}