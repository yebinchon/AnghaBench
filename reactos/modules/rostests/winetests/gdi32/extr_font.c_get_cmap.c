
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_tables; } ;
typedef TYPE_1__ cmap_header ;
struct TYPE_5__ {int offset; int enc_id; int plat_id; } ;
typedef TYPE_2__ cmap_encoding_record ;
typedef scalar_t__ USHORT ;
typedef void BYTE ;


 int GET_BE_DWORD (int ) ;
 scalar_t__ GET_BE_WORD (int ) ;

__attribute__((used)) static void *get_cmap(cmap_header *header, USHORT plat_id, USHORT enc_id)
{
    USHORT i;
    cmap_encoding_record *record = (cmap_encoding_record *)(header + 1);

    for(i = 0; i < GET_BE_WORD(header->num_tables); i++)
    {
        if(GET_BE_WORD(record->plat_id) == plat_id && GET_BE_WORD(record->enc_id) == enc_id)
            return (BYTE *)header + GET_BE_DWORD(record->offset);
        record++;
    }
    return ((void*)0);
}
