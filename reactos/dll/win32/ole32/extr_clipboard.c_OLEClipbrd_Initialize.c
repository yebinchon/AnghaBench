
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int marshal_data; int * cached_enum; int * src_data; int * window; int * latest_snapshot; } ;
typedef TYPE_1__ ole_clipbrd ;
typedef int HGLOBAL ;


 int CreateStreamOnHGlobal (int ,int ,int *) ;
 scalar_t__ FAILED (int ) ;
 int GMEM_DDESHARE ;
 int GMEM_MOVEABLE ;
 int GetProcessHeap () ;
 int GlobalAlloc (int,int ) ;
 int GlobalFree (int ) ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int TRACE (char*) ;
 int TRUE ;
 int register_clipboard_formats () ;
 TYPE_1__* theOleClipboard ;

void OLEClipbrd_Initialize(void)
{
    register_clipboard_formats();

    if ( !theOleClipboard )
    {
        ole_clipbrd* clipbrd;
        HGLOBAL h;

        TRACE("()\n");

        clipbrd = HeapAlloc( GetProcessHeap(), 0, sizeof(*clipbrd) );
        if (!clipbrd) return;

        clipbrd->latest_snapshot = ((void*)0);
        clipbrd->window = ((void*)0);
        clipbrd->src_data = ((void*)0);
        clipbrd->cached_enum = ((void*)0);

        h = GlobalAlloc(GMEM_DDESHARE | GMEM_MOVEABLE, 0);
        if(!h)
        {
            HeapFree(GetProcessHeap(), 0, clipbrd);
            return;
        }

        if(FAILED(CreateStreamOnHGlobal(h, TRUE, &clipbrd->marshal_data)))
        {
            GlobalFree(h);
            HeapFree(GetProcessHeap(), 0, clipbrd);
            return;
        }

        theOleClipboard = clipbrd;
    }
}
