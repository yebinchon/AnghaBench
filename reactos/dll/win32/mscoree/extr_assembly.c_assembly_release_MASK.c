#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* path; struct TYPE_4__* metadatahdr; int /*<<< orphan*/  hfile; int /*<<< orphan*/  hmap; int /*<<< orphan*/  data; scalar_t__ is_mapped_file; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ ASSEMBLY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

HRESULT FUNC4(ASSEMBLY *assembly)
{
    if (!assembly)
        return S_OK;

    if (assembly->is_mapped_file)
    {
        FUNC3(assembly->data);
        FUNC0(assembly->hmap);
        FUNC0(assembly->hfile);
    }
    FUNC2(FUNC1(), 0, assembly->metadatahdr);
    FUNC2(FUNC1(), 0, assembly->path);
    FUNC2(FUNC1(), 0, assembly);

    return S_OK;
}