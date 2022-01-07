
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int format; } ;
typedef TYPE_2__ VOID ;
struct TYPE_13__ {TYPE_1__* tables; int numTables; } ;
struct TYPE_12__ {TYPE_5__* CMAP_Table; } ;
struct TYPE_10__ {int offset; int encodingID; int platformID; } ;
typedef TYPE_3__ ScriptCache ;
typedef int HDC ;
typedef TYPE_2__ CMAP_SegmentedCoverage ;
typedef TYPE_5__ CMAP_Header ;
typedef int BYTE ;


 int CMAP_TAG ;
 int GDI_ERROR ;
 int GET_BE_DWORD (int ) ;
 int GET_BE_WORD (int ) ;
 int GetFontData (int ,int ,int ,TYPE_5__*,int) ;
 int TRACE (char*,int) ;
 TYPE_5__* heap_alloc (int) ;

__attribute__((used)) static VOID *load_CMAP_format12_table(HDC hdc, ScriptCache *psc)
{
    CMAP_Header *CMAP_Table = ((void*)0);
    int length;
    int i;

    if (!psc->CMAP_Table)
    {
        length = GetFontData(hdc, CMAP_TAG , 0, ((void*)0), 0);
        if (length != GDI_ERROR)
        {
            psc->CMAP_Table = heap_alloc(length);
            GetFontData(hdc, CMAP_TAG , 0, psc->CMAP_Table, length);
            TRACE("Loaded cmap table of %i bytes\n",length);
        }
        else
            return ((void*)0);
    }

    CMAP_Table = psc->CMAP_Table;

    for (i = 0; i < GET_BE_WORD(CMAP_Table->numTables); i++)
    {
        if ( (GET_BE_WORD(CMAP_Table->tables[i].platformID) == 3) &&
             (GET_BE_WORD(CMAP_Table->tables[i].encodingID) == 10) )
        {
            CMAP_SegmentedCoverage *format = (CMAP_SegmentedCoverage*)(((BYTE*)CMAP_Table) + GET_BE_DWORD(CMAP_Table->tables[i].offset));
            if (GET_BE_WORD(format->format) == 12)
                return format;
        }
    }
    return ((void*)0);
}
