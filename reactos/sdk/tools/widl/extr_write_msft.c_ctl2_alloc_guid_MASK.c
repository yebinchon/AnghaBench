#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int* typelib_guidhash_segment; scalar_t__* typelib_segment_data; } ;
typedef  TYPE_1__ msft_typelib_t ;
struct TYPE_11__ {int /*<<< orphan*/ * Data4; int /*<<< orphan*/  Data3; int /*<<< orphan*/  Data2; int /*<<< orphan*/  Data1; } ;
struct TYPE_10__ {int next_hash; TYPE_3__ guid; } ;
typedef  TYPE_2__ MSFT_GuidEntry ;

/* Variables and functions */
 size_t MSFT_SEG_GUID ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,size_t,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int,TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(
	msft_typelib_t *typelib,   /* [I] The type library to allocate in. */
	MSFT_GuidEntry *guid)      /* [I] The GUID to store. */
{
    int offset;
    MSFT_GuidEntry *guid_space;
    int hash_key;

    FUNC0("adding uuid {%08x-%04x-%04x-%02x%02x-%02x%02x%02x%02x%02x%02x}\n",
         guid->guid.Data1, guid->guid.Data2, guid->guid.Data3,
         guid->guid.Data4[0], guid->guid.Data4[1], guid->guid.Data4[2], guid->guid.Data4[3],
         guid->guid.Data4[4], guid->guid.Data4[5], guid->guid.Data4[6], guid->guid.Data4[7]);

    hash_key = FUNC3(&guid->guid);

    offset = FUNC2(typelib, hash_key, &guid->guid);
    if (offset != -1)
    {
        if (FUNC4(2368))
            FUNC5("duplicate uuid {%08x-%04x-%04x-%02x%02x-%02x%02x%02x%02x%02x%02x}\n",
                    guid->guid.Data1, guid->guid.Data2, guid->guid.Data3,
                    guid->guid.Data4[0], guid->guid.Data4[1], guid->guid.Data4[2], guid->guid.Data4[3],
                    guid->guid.Data4[4], guid->guid.Data4[5], guid->guid.Data4[6], guid->guid.Data4[7]);
        return -1;
    }

    offset = FUNC1(typelib, MSFT_SEG_GUID, sizeof(MSFT_GuidEntry), 0);

    guid_space = (void *)(typelib->typelib_segment_data[MSFT_SEG_GUID] + offset);
    *guid_space = *guid;

    guid_space->next_hash = typelib->typelib_guidhash_segment[hash_key];
    typelib->typelib_guidhash_segment[hash_key] = offset;

    return offset;
}