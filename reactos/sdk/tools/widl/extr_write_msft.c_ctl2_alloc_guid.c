
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int* typelib_guidhash_segment; scalar_t__* typelib_segment_data; } ;
typedef TYPE_1__ msft_typelib_t ;
struct TYPE_11__ {int * Data4; int Data3; int Data2; int Data1; } ;
struct TYPE_10__ {int next_hash; TYPE_3__ guid; } ;
typedef TYPE_2__ MSFT_GuidEntry ;


 size_t MSFT_SEG_GUID ;
 int chat (char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int ctl2_alloc_segment (TYPE_1__*,size_t,int,int ) ;
 int ctl2_find_guid (TYPE_1__*,int,TYPE_3__*) ;
 int ctl2_hash_guid (TYPE_3__*) ;
 scalar_t__ is_warning_enabled (int) ;
 int warning (char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int ctl2_alloc_guid(
 msft_typelib_t *typelib,
 MSFT_GuidEntry *guid)
{
    int offset;
    MSFT_GuidEntry *guid_space;
    int hash_key;

    chat("adding uuid {%08x-%04x-%04x-%02x%02x-%02x%02x%02x%02x%02x%02x}\n",
         guid->guid.Data1, guid->guid.Data2, guid->guid.Data3,
         guid->guid.Data4[0], guid->guid.Data4[1], guid->guid.Data4[2], guid->guid.Data4[3],
         guid->guid.Data4[4], guid->guid.Data4[5], guid->guid.Data4[6], guid->guid.Data4[7]);

    hash_key = ctl2_hash_guid(&guid->guid);

    offset = ctl2_find_guid(typelib, hash_key, &guid->guid);
    if (offset != -1)
    {
        if (is_warning_enabled(2368))
            warning("duplicate uuid {%08x-%04x-%04x-%02x%02x-%02x%02x%02x%02x%02x%02x}\n",
                    guid->guid.Data1, guid->guid.Data2, guid->guid.Data3,
                    guid->guid.Data4[0], guid->guid.Data4[1], guid->guid.Data4[2], guid->guid.Data4[3],
                    guid->guid.Data4[4], guid->guid.Data4[5], guid->guid.Data4[6], guid->guid.Data4[7]);
        return -1;
    }

    offset = ctl2_alloc_segment(typelib, MSFT_SEG_GUID, sizeof(MSFT_GuidEntry), 0);

    guid_space = (void *)(typelib->typelib_segment_data[MSFT_SEG_GUID] + offset);
    *guid_space = *guid;

    guid_space->next_hash = typelib->typelib_guidhash_segment[hash_key];
    typelib->typelib_guidhash_segment[hash_key] = offset;

    return offset;
}
