
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct guidsection_header {int index_offset; scalar_t__ count; } ;
struct guid_index {int guid; } ;
typedef scalar_t__ ULONG ;
typedef int GUID ;
typedef int BYTE ;


 int memcmp (int const*,int *,int) ;

__attribute__((used)) static struct guid_index *find_guid_index(const struct guidsection_header *section, const GUID *guid)
{
    struct guid_index *iter, *index = ((void*)0);
    ULONG i;

    iter = (struct guid_index*)((BYTE*)section + section->index_offset);

    for (i = 0; i < section->count; i++)
    {
        if (!memcmp(guid, &iter->guid, sizeof(*guid)))
        {
            index = iter;
            break;
        }
        iter++;
    }

    return index;
}
