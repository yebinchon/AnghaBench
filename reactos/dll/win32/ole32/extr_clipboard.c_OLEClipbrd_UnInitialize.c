
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int marshal_data; scalar_t__ window; scalar_t__ src_data; } ;
typedef TYPE_1__ ole_clipbrd ;
typedef char WCHAR ;
typedef int HINSTANCE ;


 int DestroyWindow (scalar_t__) ;
 int GetModuleHandleW (char const*) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int IDataObject_AddRef (scalar_t__) ;
 int IStream_Release (int ) ;
 int TRACE (char*) ;
 int UnregisterClassW (int ,int ) ;
 int clipbrd_wndclass ;
 int set_src_dataobject (TYPE_1__*,int *) ;
 TYPE_1__* theOleClipboard ;

void OLEClipbrd_UnInitialize(void)
{
    ole_clipbrd *clipbrd = theOleClipboard;

    TRACE("()\n");

    if ( clipbrd )
    {
        static const WCHAR ole32W[] = {'o','l','e','3','2',0};
        HINSTANCE hinst = GetModuleHandleW(ole32W);



        if (clipbrd->src_data)
        {
            IDataObject_AddRef(clipbrd->src_data);
            set_src_dataobject(clipbrd, ((void*)0));
        }

        if ( clipbrd->window )
        {
            DestroyWindow(clipbrd->window);
            UnregisterClassW( clipbrd_wndclass, hinst );
        }

        IStream_Release(clipbrd->marshal_data);
        HeapFree(GetProcessHeap(), 0, clipbrd);
        theOleClipboard = ((void*)0);
    }
}
