
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* typelib_guidhash_segment; int ** typelib_segment_data; } ;
typedef TYPE_1__ msft_typelib_t ;
struct TYPE_6__ {int next_hash; } ;
typedef int REFGUID ;
typedef TYPE_2__ MSFT_GuidEntry ;
typedef int GUID ;


 size_t MSFT_SEG_GUID ;
 int memcmp (TYPE_2__*,int ,int) ;

__attribute__((used)) static int ctl2_find_guid(
 msft_typelib_t *typelib,
 int hash_key,
 REFGUID guid)
{
    int offset;
    MSFT_GuidEntry *guidentry;

    offset = typelib->typelib_guidhash_segment[hash_key];
    while (offset != -1) {
 guidentry = (MSFT_GuidEntry *)&typelib->typelib_segment_data[MSFT_SEG_GUID][offset];

 if (!memcmp(guidentry, guid, sizeof(GUID))) return offset;

 offset = guidentry->next_hash;
    }

    return offset;
}
