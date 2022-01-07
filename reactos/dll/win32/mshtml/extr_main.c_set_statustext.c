
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int frame; } ;
typedef int * LPCWSTR ;
typedef int INT ;
typedef TYPE_1__ HTMLDocumentObj ;
typedef int DWORD ;


 int IDS_STATUS_FIRST ;
 int IOleInPlaceFrame_SetStatusText (int ,int *) ;
 scalar_t__ InterlockedCompareExchangePointer (void**,int *,int *) ;
 int LoadStringW (int ,int,int *,int) ;
 int hInst ;
 int * heap_alloc (int) ;
 int heap_free (int *) ;
 int * heap_realloc (int *,int) ;
 int lstrlenW (int *) ;
 int snprintfW (int *,int,int *,int *) ;
 int ** status_strings ;

void set_statustext(HTMLDocumentObj* doc, INT id, LPCWSTR arg)
{
    int index = id - IDS_STATUS_FIRST;
    WCHAR *p = status_strings[index];
    DWORD len;

    if(!doc->frame)
        return;

    if(!p) {
        len = 255;
        p = heap_alloc(len * sizeof(WCHAR));
        len = LoadStringW(hInst, id, p, len) + 1;
        p = heap_realloc(p, len * sizeof(WCHAR));
        if(InterlockedCompareExchangePointer((void**)&status_strings[index], p, ((void*)0))) {
            heap_free(p);
            p = status_strings[index];
        }
    }

    if(arg) {
        WCHAR *buf;

        len = lstrlenW(p) + lstrlenW(arg) - 1;
        buf = heap_alloc(len * sizeof(WCHAR));

        snprintfW(buf, len, p, arg);

        p = buf;
    }

    IOleInPlaceFrame_SetStatusText(doc->frame, p);

    if(arg)
        heap_free(p);
}
