
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mime; int clipboard_format; int callback; int report_mime; } ;
typedef int LPCWSTR ;
typedef TYPE_1__ Binding ;


 int BINDSTATUS_MIMETYPEAVAILABLE ;
 int IBindStatusCallback_OnProgress (int ,int ,int ,int ,int ) ;
 int RegisterClipboardFormatW (int ) ;
 int heap_free (int ) ;
 int heap_strdupW (int ) ;

__attribute__((used)) static void mime_available(Binding *This, LPCWSTR mime)
{
    heap_free(This->mime);
    This->mime = heap_strdupW(mime);

    if(!This->mime || !This->report_mime)
        return;

    IBindStatusCallback_OnProgress(This->callback, 0, 0, BINDSTATUS_MIMETYPEAVAILABLE, This->mime);

    This->clipboard_format = RegisterClipboardFormatW(This->mime);
}
