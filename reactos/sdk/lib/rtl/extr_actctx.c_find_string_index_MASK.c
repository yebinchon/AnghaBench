#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct strsection_header {int index_offset; scalar_t__ count; } ;
struct string_index {scalar_t__ hash; int name_offset; } ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_5__ {int Length; int /*<<< orphan*/  Buffer; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct strsection_header const*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,TYPE_1__ const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  HASH_STRING_ALGORITHM_X65599 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static struct string_index *FUNC5(const struct strsection_header *section, const UNICODE_STRING *name)
{
    struct string_index *iter, *index = NULL;
    ULONG hash = 0, i;

    FUNC0("section %p, name %wZ\n", section, name);
    FUNC2(name, TRUE, HASH_STRING_ALGORITHM_X65599, &hash);
    iter = (struct string_index*)((BYTE*)section + section->index_offset);

    for (i = 0; i < section->count; i++)
    {
        FUNC0("iter->hash 0x%x ?= 0x%x\n", iter->hash, hash);
        FUNC0("iter->name %S\n", (WCHAR*)((BYTE*)section + iter->name_offset));
        if (iter->hash == hash)
        {
            const WCHAR *nameW = (WCHAR*)((BYTE*)section + iter->name_offset);

            if (!FUNC3(nameW, name->Buffer, name->Length / sizeof(WCHAR)) && 
                FUNC4(nameW) == name->Length / sizeof(WCHAR))
            {
                index = iter;
                break;
            }
            else
                FUNC1("hash collision 0x%08x, %wZ, %S\n", hash, name, nameW);
        }
        iter++;
    }

    return index;
}