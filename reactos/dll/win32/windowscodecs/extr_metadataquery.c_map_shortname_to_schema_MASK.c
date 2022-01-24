#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  size_t UINT ;
struct TYPE_3__ {int /*<<< orphan*/  const* schema; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  GUID_MetadataFormatXMP ; 
 int /*<<< orphan*/  GUID_MetadataFormatXMPStruct ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 TYPE_1__* name2schema ; 

__attribute__((used)) static const WCHAR *FUNC3(const GUID *format, const WCHAR *name)
{
    UINT i;

    /* It appears that the only metadata formats
     * that support schemas are xmp and xmpstruct.
     */
    if (!FUNC1(format, &GUID_MetadataFormatXMP) &&
        !FUNC1(format, &GUID_MetadataFormatXMPStruct))
        return NULL;

    for (i = 0; i < FUNC0(name2schema); i++)
    {
        if (!FUNC2(name2schema[i].name, name))
            return name2schema[i].schema;
    }

    return NULL;
}