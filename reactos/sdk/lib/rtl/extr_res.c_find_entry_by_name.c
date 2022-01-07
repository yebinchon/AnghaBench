
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ULONG_PTR ;
struct TYPE_11__ {int NumberOfNamedEntries; } ;
struct TYPE_10__ {int NameOffset; int OffsetToDirectory; int DataIsDirectory; } ;
struct TYPE_9__ {size_t Length; int NameString; } ;
typedef scalar_t__ LPCWSTR ;
typedef TYPE_1__ IMAGE_RESOURCE_DIR_STRING_U ;
typedef TYPE_2__ IMAGE_RESOURCE_DIRECTORY_ENTRY ;
typedef TYPE_3__ IMAGE_RESOURCE_DIRECTORY ;


 int DPRINT (char*,void*,TYPE_3__*,scalar_t__,...) ;
 int _wcsnicmp (scalar_t__,int ,size_t) ;
 TYPE_3__* find_entry_by_id (TYPE_3__*,int,void*,int) ;
 size_t wcslen (scalar_t__) ;

IMAGE_RESOURCE_DIRECTORY *find_entry_by_name( IMAGE_RESOURCE_DIRECTORY *dir,
                                              LPCWSTR name, void *root,
                                              int want_dir )
{
    const IMAGE_RESOURCE_DIRECTORY_ENTRY *entry;
    const IMAGE_RESOURCE_DIR_STRING_U *str;
    int min, max, res, pos;
    size_t namelen;

    if (!((ULONG_PTR)name & 0xFFFF0000)) return find_entry_by_id( dir, (ULONG_PTR)name & 0xFFFF, root, want_dir );
    entry = (const IMAGE_RESOURCE_DIRECTORY_ENTRY *)(dir + 1);
    namelen = wcslen(name);
    min = 0;
    max = dir->NumberOfNamedEntries - 1;
    while (min <= max)
    {
        pos = (min + max) / 2;
        str = (const IMAGE_RESOURCE_DIR_STRING_U *)((const char *)root + entry[pos].NameOffset);
        res = _wcsnicmp( name, str->NameString, str->Length );
        if (!res && namelen == str->Length)
        {
            if (!entry[pos].DataIsDirectory == !want_dir)
            {
                DPRINT("root %p dir %p name %ws ret %p\n",
                       root, dir, name, (const char*)root + entry[pos].OffsetToDirectory);
                return (IMAGE_RESOURCE_DIRECTORY *)((char *)root + entry[pos].OffsetToDirectory);
            }
            break;
        }
        if (res < 0) max = pos - 1;
        else min = pos + 1;
    }
    DPRINT("root %p dir %p name %ws not found\n", root, dir, name);
    return ((void*)0);
}
