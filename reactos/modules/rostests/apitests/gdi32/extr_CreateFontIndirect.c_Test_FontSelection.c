
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_4__ {int CharSetBefore; } ;
typedef int HDC ;


 int CreateCompatibleDC (int *) ;
 int DeleteDC (int ) ;
 int Test_FontSelectionEntry (int ,size_t,TYPE_1__*) ;
 size_t _countof (TYPE_1__*) ;
 TYPE_1__* g_Entries ;
 int is_charset_font_installed (int ,int ) ;
 int skip (char*,int ) ;

__attribute__((used)) static void
Test_FontSelection(void)
{
    UINT nIndex;
    HDC hDC;

    hDC = CreateCompatibleDC(((void*)0));
    for (nIndex = 0; nIndex < _countof(g_Entries); ++nIndex)
    {
        if (!is_charset_font_installed(hDC, g_Entries[nIndex].CharSetBefore))
            skip("charset not available: 0x%x\n", g_Entries[nIndex].CharSetBefore);
        else
            Test_FontSelectionEntry(hDC, nIndex, g_Entries + nIndex);
    }
    DeleteDC(hDC);
}
