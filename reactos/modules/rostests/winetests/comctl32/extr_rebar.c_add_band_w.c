
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fMask; int cx; int cxMinChild; int cxIdeal; int cyMinChild; int * lpText; int hwndChild; int cbSize; } ;
typedef TYPE_1__ REBARBANDINFOA ;
typedef int * LPCSTR ;
typedef int LPARAM ;
typedef int HWND ;
typedef int CHAR ;


 int MAX_PATH ;
 int RBBIM_CHILD ;
 int RBBIM_CHILDSIZE ;
 int RBBIM_IDEALSIZE ;
 int RBBIM_SIZE ;
 int RBBIM_TEXT ;
 int RB_INSERTBANDA ;
 int REBARBANDINFOA_V6_SIZE ;
 int SendMessageA (int ,int ,int,int ) ;
 int build_toolbar (int,int ) ;
 int strcpy (int *,int *) ;

__attribute__((used)) static void add_band_w(HWND hRebar, LPCSTR lpszText, int cxMinChild, int cx, int cxIdeal)
{
    CHAR buffer[MAX_PATH];
    REBARBANDINFOA rbi;

    if (lpszText != ((void*)0))
        strcpy(buffer, lpszText);
    rbi.cbSize = REBARBANDINFOA_V6_SIZE;
    rbi.fMask = RBBIM_SIZE | RBBIM_CHILDSIZE | RBBIM_CHILD | RBBIM_IDEALSIZE | RBBIM_TEXT;
    rbi.cx = cx;
    rbi.cxMinChild = cxMinChild;
    rbi.cxIdeal = cxIdeal;
    rbi.cyMinChild = 20;
    rbi.hwndChild = build_toolbar(1, hRebar);
    rbi.lpText = (lpszText ? buffer : ((void*)0));
    SendMessageA(hRebar, RB_INSERTBANDA, -1, (LPARAM)&rbi);
}
