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
typedef  unsigned int UINT ;
struct TYPE_4__ {unsigned int container_count; void* containers; int /*<<< orphan*/ * container_formats; int /*<<< orphan*/  classkey; } ;
typedef  TYPE_1__ MetadataReaderInfo ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,unsigned int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  containers_keyname ; 
 void* FUNC2 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static BOOL FUNC5(MetadataReaderInfo *info)
{
    UINT format_count;
    GUID *formats;
    HRESULT hr;

    hr = FUNC0(info->classkey, containers_keyname, 0, NULL, &format_count);
    if (FUNC1(hr)) return TRUE;

    formats = FUNC2(format_count, sizeof(*formats));
    if (!formats) return FALSE;

    hr = FUNC0(info->classkey, containers_keyname, format_count, formats,
                                   &format_count);
    if (FUNC1(hr))
    {
        FUNC3(formats);
        return FALSE;
    }

    info->container_formats = formats;
    info->container_count = format_count;

    if (format_count)
    {
        unsigned i;

        info->containers = FUNC2(format_count, sizeof(*info->containers));
        if (!info->containers) return FALSE;

        for (i = 0; i < format_count; i++)
            FUNC4(info, info->container_formats + i, info->containers + i);
    }

    return TRUE;
}