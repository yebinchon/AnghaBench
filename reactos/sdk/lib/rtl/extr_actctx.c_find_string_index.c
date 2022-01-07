
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct strsection_header {int index_offset; scalar_t__ count; } ;
struct string_index {scalar_t__ hash; int name_offset; } ;
typedef int WCHAR ;
struct TYPE_5__ {int Length; int Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef scalar_t__ ULONG ;
typedef int BYTE ;


 int DPRINT (char*,struct strsection_header const*,...) ;
 int DPRINT1 (char*,scalar_t__,TYPE_1__ const*,int const*) ;
 int HASH_STRING_ALGORITHM_X65599 ;
 int RtlHashUnicodeString (TYPE_1__ const*,int ,int ,scalar_t__*) ;
 int TRUE ;
 int _wcsnicmp (int const*,int ,int) ;
 int wcslen (int const*) ;

__attribute__((used)) static struct string_index *find_string_index(const struct strsection_header *section, const UNICODE_STRING *name)
{
    struct string_index *iter, *index = ((void*)0);
    ULONG hash = 0, i;

    DPRINT("section %p, name %wZ\n", section, name);
    RtlHashUnicodeString(name, TRUE, HASH_STRING_ALGORITHM_X65599, &hash);
    iter = (struct string_index*)((BYTE*)section + section->index_offset);

    for (i = 0; i < section->count; i++)
    {
        DPRINT("iter->hash 0x%x ?= 0x%x\n", iter->hash, hash);
        DPRINT("iter->name %S\n", (WCHAR*)((BYTE*)section + iter->name_offset));
        if (iter->hash == hash)
        {
            const WCHAR *nameW = (WCHAR*)((BYTE*)section + iter->name_offset);

            if (!_wcsnicmp(nameW, name->Buffer, name->Length / sizeof(WCHAR)) &&
                wcslen(nameW) == name->Length / sizeof(WCHAR))
            {
                index = iter;
                break;
            }
            else
                DPRINT1("hash collision 0x%08x, %wZ, %S\n", hash, name, nameW);
        }
        iter++;
    }

    return index;
}
