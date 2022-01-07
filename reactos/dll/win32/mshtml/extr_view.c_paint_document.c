
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwFlags; } ;
struct TYPE_5__ {int hwnd; TYPE_1__ hostinfo; } ;
typedef int RECT ;
typedef int PAINTSTRUCT ;
typedef TYPE_2__ HTMLDocumentObj ;
typedef int HDC ;


 int BF_ADJUST ;
 int BF_RECT ;
 int BeginPaint (int ,int *) ;
 int DOCHOSTUIFLAG_NO3DBORDER ;
 int DOCHOSTUIFLAG_NO3DOUTERBORDER ;
 int DrawEdge (int ,int *,int ,int) ;
 int EDGE_SUNKEN ;
 int EndPaint (int ,int *) ;
 int GetClientRect (int ,int *) ;

__attribute__((used)) static void paint_document(HTMLDocumentObj *This)
{
    PAINTSTRUCT ps;
    RECT rect;
    HDC hdc;

    GetClientRect(This->hwnd, &rect);

    hdc = BeginPaint(This->hwnd, &ps);

    if(!(This->hostinfo.dwFlags & (DOCHOSTUIFLAG_NO3DOUTERBORDER|DOCHOSTUIFLAG_NO3DBORDER)))
        DrawEdge(hdc, &rect, EDGE_SUNKEN, BF_RECT|BF_ADJUST);

    EndPaint(This->hwnd, &ps);
}
