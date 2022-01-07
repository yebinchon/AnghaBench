
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int SubstFormat; int ExtensionOffset; } ;
struct TYPE_4__ {int LookupType; int * SubTable; } ;
typedef TYPE_1__ OT_LookupTable ;
typedef TYPE_2__ GSUB_ExtensionPosFormat1 ;
typedef int BYTE ;


 int FIXME (char*,int) ;
 scalar_t__ GET_BE_DWORD (int ) ;
 int GET_BE_WORD (int ) ;
 int GSUB_LOOKUP_EXTENSION ;

__attribute__((used)) static const BYTE *GSUB_get_subtable(const OT_LookupTable *look, int index)
{
    int offset = GET_BE_WORD(look->SubTable[index]);

    if (GET_BE_WORD(look->LookupType) == GSUB_LOOKUP_EXTENSION)
    {
        const GSUB_ExtensionPosFormat1 *ext = (const GSUB_ExtensionPosFormat1 *)((const BYTE *)look + offset);
        if (GET_BE_WORD(ext->SubstFormat) == 1)
        {
            offset += GET_BE_DWORD(ext->ExtensionOffset);
        }
        else
        {
            FIXME("Unhandled Extension Substitution Format %i\n",GET_BE_WORD(ext->SubstFormat));
        }
    }
    return (const BYTE *)look + offset;
}
