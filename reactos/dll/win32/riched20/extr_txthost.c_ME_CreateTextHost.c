
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int cbSize; int wAlignment; int dwMask; } ;
struct TYPE_10__ {int style; } ;
struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_8__ {int ref; TYPE_2__ ITextHost_iface; TYPE_4__ para_fmt; int bEmulateVersion10; int hWnd; } ;
typedef TYPE_1__ ITextHostImpl ;
typedef TYPE_2__ ITextHost ;
typedef int HWND ;
typedef TYPE_3__ CREATESTRUCTW ;
typedef int BOOL ;


 TYPE_1__* CoTaskMemAlloc (int) ;
 int ES_CENTER ;
 int ES_RIGHT ;
 int PFA_CENTER ;
 int PFA_LEFT ;
 int PFA_RIGHT ;
 int PFM_ALIGNMENT ;
 int memset (TYPE_4__*,int ,int) ;
 int textHostVtbl ;

ITextHost *ME_CreateTextHost(HWND hwnd, CREATESTRUCTW *cs, BOOL bEmulateVersion10)
{
    ITextHostImpl *texthost;

    texthost = CoTaskMemAlloc(sizeof(*texthost));
    if (!texthost) return ((void*)0);

    texthost->ITextHost_iface.lpVtbl = &textHostVtbl;
    texthost->ref = 1;
    texthost->hWnd = hwnd;
    texthost->bEmulateVersion10 = bEmulateVersion10;
    memset( &texthost->para_fmt, 0, sizeof(texthost->para_fmt) );
    texthost->para_fmt.cbSize = sizeof(texthost->para_fmt);
    texthost->para_fmt.dwMask = PFM_ALIGNMENT;
    texthost->para_fmt.wAlignment = PFA_LEFT;
    if (cs->style & ES_RIGHT)
        texthost->para_fmt.wAlignment = PFA_RIGHT;
    if (cs->style & ES_CENTER)
        texthost->para_fmt.wAlignment = PFA_CENTER;

    return &texthost->ITextHost_iface;
}
