
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct metadata_container {int pattern_count; int patterns_size; TYPE_1__* patterns; } ;
struct TYPE_12__ {scalar_t__ QuadPart; } ;
struct TYPE_10__ {int Length; TYPE_3__* Mask; TYPE_3__* Pattern; TYPE_3__ Position; TYPE_3__ DataOffset; } ;
typedef TYPE_1__ WICMetadataPattern ;
typedef char WCHAR ;
typedef int UINT ;
struct TYPE_11__ {int classkey; } ;
typedef TYPE_2__ MetadataReaderInfo ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef int GUID ;
typedef int DWORD64 ;
typedef int DWORD ;
typedef TYPE_3__ BYTE ;


 scalar_t__ ERROR_SUCCESS ;
 int KEY_READ ;
 int RRF_RT_DWORD ;
 int RRF_RT_QWORD ;
 int RRF_RT_REG_BINARY ;
 int RegCloseKey (int ) ;
 scalar_t__ RegGetValueW (int ,int *,char const*,int,int *,TYPE_3__*,int*) ;
 scalar_t__ RegOpenKeyExW (int ,char*,int ,int ,int *) ;
 scalar_t__ RegQueryInfoKeyW (int ,int *,int *,int *,int*,int *,int *,int *,int *,int *,int *,int *) ;
 int StringFromGUID2 (int *,char*,int) ;
 char* containers_keyname ;
 TYPE_1__* heap_alloc (int) ;
 int heap_free (TYPE_1__*) ;
 TYPE_3__* heap_realloc (TYPE_1__*,int) ;
 int snprintfW (char*,int,char const*,int) ;

__attribute__((used)) static void read_metadata_patterns(MetadataReaderInfo *info, GUID *container_guid,
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

    res = RegOpenKeyExW(info->classkey, containers_keyname, 0, KEY_READ, &containers_key);
    if (res != ERROR_SUCCESS) return;

    StringFromGUID2(container_guid, guidkeyname, 39);
    res = RegOpenKeyExW(containers_key, guidkeyname, 0, KEY_READ, &guid_key);
    RegCloseKey(containers_key);
    if (res != ERROR_SUCCESS) return;

    res = RegQueryInfoKeyW(guid_key, ((void*)0), ((void*)0), ((void*)0), &pattern_count,
                           ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    if (res != ERROR_SUCCESS)
    {
        RegCloseKey(guid_key);
        return;
    }

    patterns_size = pattern_count * sizeof(WICMetadataPattern);
    patterns = heap_alloc(patterns_size);
    if (!patterns)
    {
        RegCloseKey(guid_key);
        return;
    }

    for (i=0; res == ERROR_SUCCESS && i < pattern_count; i++)
    {
        snprintfW(subkeyname, 11, uintformatW, i);
        res = RegOpenKeyExW(guid_key, subkeyname, 0, KEY_READ, &patternkey);
        if (res != ERROR_SUCCESS) break;

        res = RegGetValueW(patternkey, ((void*)0), patternW, RRF_RT_REG_BINARY, ((void*)0), ((void*)0), &length);
        if (res == ERROR_SUCCESS)
        {
            patterns_size += length*2;
            patterns[i].Length = length;

            valuesize = sizeof(DWORD64);
            res = RegGetValueW(patternkey, ((void*)0), dataoffsetW, RRF_RT_DWORD|RRF_RT_QWORD, ((void*)0),
                               &patterns[i].DataOffset, &valuesize);
            if (res) patterns[i].DataOffset.QuadPart = 0;

            patterns[i].Position.QuadPart = 0;
            valuesize = sizeof(DWORD64);
            res = RegGetValueW(patternkey, ((void*)0), positionW, RRF_RT_DWORD|RRF_RT_QWORD, ((void*)0),
                               &patterns[i].Position, &valuesize);
        }

        RegCloseKey(patternkey);
    }

    if (res != ERROR_SUCCESS || !(patterns_ptr = heap_realloc(patterns, patterns_size)))
    {
        heap_free(patterns);
        RegCloseKey(guid_key);
        return;
    }
    patterns = (WICMetadataPattern*)patterns_ptr;
    patterns_ptr += pattern_count * sizeof(*patterns);

    for (i=0; res == ERROR_SUCCESS && i < pattern_count; i++)
    {
        snprintfW(subkeyname, 11, uintformatW, i);
        res = RegOpenKeyExW(guid_key, subkeyname, 0, KEY_READ, &patternkey);
        if (res != ERROR_SUCCESS) break;

        length = patterns[i].Length;
        patterns[i].Pattern = patterns_ptr;
        valuesize = length;
        res = RegGetValueW(patternkey, ((void*)0), patternW, RRF_RT_REG_BINARY, ((void*)0),
                           patterns[i].Pattern, &valuesize);
        patterns_ptr += length;

        if (res == ERROR_SUCCESS)
        {
            patterns[i].Mask = patterns_ptr;
            valuesize = length;
            res = RegGetValueW(patternkey, ((void*)0), maskW, RRF_RT_REG_BINARY, ((void*)0),
                               patterns[i].Mask, &valuesize);
            patterns_ptr += length;
        }

        RegCloseKey(patternkey);
    }

    RegCloseKey(guid_key);

    if (res != ERROR_SUCCESS)
    {
        heap_free(patterns);
        return;
    }

    container->pattern_count = pattern_count;
    container->patterns_size = patterns_size;
    container->patterns = patterns;
}
