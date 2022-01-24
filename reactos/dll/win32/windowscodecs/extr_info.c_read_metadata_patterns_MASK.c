#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct metadata_container {int pattern_count; int patterns_size; TYPE_1__* patterns; } ;
struct TYPE_12__ {scalar_t__ QuadPart; } ;
struct TYPE_10__ {int Length; TYPE_3__* Mask; TYPE_3__* Pattern; TYPE_3__ Position; TYPE_3__ DataOffset; } ;
typedef  TYPE_1__ WICMetadataPattern ;
typedef  char WCHAR ;
typedef  int UINT ;
struct TYPE_11__ {int /*<<< orphan*/  classkey; } ;
typedef  TYPE_2__ MetadataReaderInfo ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int /*<<< orphan*/  DWORD64 ;
typedef  int DWORD ;
typedef  TYPE_3__ BYTE ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  KEY_READ ; 
 int RRF_RT_DWORD ; 
 int RRF_RT_QWORD ; 
 int RRF_RT_REG_BINARY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *,TYPE_3__*,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 char* containers_keyname ; 
 TYPE_1__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_3__* FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char const*,int) ; 

__attribute__((used)) static void FUNC9(MetadataReaderInfo *info, GUID *container_guid,
                                   struct metadata_container *container)
{
    UINT pattern_count=0, patterns_size=0;
    WCHAR subkeyname[11], guidkeyname[39];
    LONG res;
    HKEY containers_key, guid_key, patternkey;
    static const WCHAR uintformatW[] = {'%','u',0};
    static const WCHAR patternW[] = {'P','a','t','t','e','r','n',0};
    static const WCHAR positionW[] = {'P','o','s','i','t','i','o','n',0};
    static const WCHAR maskW[] = {'M','a','s','k',0};
    static const WCHAR dataoffsetW[] = {'D','a','t','a','O','f','f','s','e','t',0};
    UINT i;
    WICMetadataPattern *patterns;
    BYTE *patterns_ptr;
    DWORD length, valuesize;

    res = FUNC2(info->classkey, containers_keyname, 0, KEY_READ, &containers_key);
    if (res != ERROR_SUCCESS) return;

    FUNC4(container_guid, guidkeyname, 39);
    res = FUNC2(containers_key, guidkeyname, 0, KEY_READ, &guid_key);
    FUNC0(containers_key);
    if (res != ERROR_SUCCESS) return;

    res = FUNC3(guid_key, NULL, NULL, NULL, &pattern_count,
                           NULL, NULL, NULL, NULL, NULL, NULL, NULL);
    if (res != ERROR_SUCCESS)
    {
        FUNC0(guid_key);
        return;
    }

    patterns_size = pattern_count * sizeof(WICMetadataPattern);
    patterns = FUNC5(patterns_size);
    if (!patterns)
    {
        FUNC0(guid_key);
        return;
    }

    for (i=0; res == ERROR_SUCCESS && i < pattern_count; i++)
    {
        FUNC8(subkeyname, 11, uintformatW, i);
        res = FUNC2(guid_key, subkeyname, 0, KEY_READ, &patternkey);
        if (res != ERROR_SUCCESS) break;

        res = FUNC1(patternkey, NULL, patternW, RRF_RT_REG_BINARY, NULL, NULL, &length);
        if (res == ERROR_SUCCESS)
        {
            patterns_size += length*2;
            patterns[i].Length = length;

            valuesize = sizeof(DWORD64);
            res = FUNC1(patternkey, NULL, dataoffsetW, RRF_RT_DWORD|RRF_RT_QWORD, NULL,
                               &patterns[i].DataOffset, &valuesize);
            if (res) patterns[i].DataOffset.QuadPart = 0;

            patterns[i].Position.QuadPart = 0;
            valuesize = sizeof(DWORD64);
            res = FUNC1(patternkey, NULL, positionW, RRF_RT_DWORD|RRF_RT_QWORD, NULL,
                               &patterns[i].Position, &valuesize);
        }

        FUNC0(patternkey);
    }

    if (res != ERROR_SUCCESS || !(patterns_ptr = FUNC7(patterns, patterns_size)))
    {
        FUNC6(patterns);
        FUNC0(guid_key);
        return;
    }
    patterns = (WICMetadataPattern*)patterns_ptr;
    patterns_ptr += pattern_count * sizeof(*patterns);

    for (i=0; res == ERROR_SUCCESS && i < pattern_count; i++)
    {
        FUNC8(subkeyname, 11, uintformatW, i);
        res = FUNC2(guid_key, subkeyname, 0, KEY_READ, &patternkey);
        if (res != ERROR_SUCCESS) break;

        length = patterns[i].Length;
        patterns[i].Pattern = patterns_ptr;
        valuesize = length;
        res = FUNC1(patternkey, NULL, patternW, RRF_RT_REG_BINARY, NULL,
                           patterns[i].Pattern, &valuesize);
        patterns_ptr += length;

        if (res == ERROR_SUCCESS)
        {
            patterns[i].Mask = patterns_ptr;
            valuesize = length;
            res = FUNC1(patternkey, NULL, maskW, RRF_RT_REG_BINARY, NULL,
                               patterns[i].Mask, &valuesize);
            patterns_ptr += length;
        }

        FUNC0(patternkey);
    }

    FUNC0(guid_key);

    if (res != ERROR_SUCCESS)
    {
        FUNC6(patterns);
        return;
    }

    container->pattern_count = pattern_count;
    container->patterns_size = patterns_size;
    container->patterns = patterns;
}