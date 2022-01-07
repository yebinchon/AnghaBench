
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int marshal_data; int * src_data; int * cached_enum; } ;
typedef TYPE_1__ ole_clipbrd ;
typedef int IUnknown ;
typedef int IDataObject ;
typedef int HWND ;
typedef int HRESULT ;


 int CoMarshalInterface (int ,int *,int *,int ,int *,int ) ;
 scalar_t__ FAILED (int ) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int IDataObject_AddRef (int *) ;
 int IDataObject_QueryInterface (int *,int *,void**) ;
 int IDataObject_Release (int *) ;
 int IID_IDataObject ;
 int IID_IUnknown ;
 int IUnknown_Release (int *) ;
 int MSHCTX_LOCAL ;
 int MSHLFLAGS_TABLESTRONG ;
 int get_clipbrd_window (TYPE_1__*,int *) ;
 int release_marshal_data (int ) ;
 int set_clipboard_formats (TYPE_1__*,int *) ;

__attribute__((used)) static HRESULT set_src_dataobject(ole_clipbrd *clipbrd, IDataObject *data)
{
    HRESULT hr;
    HWND wnd;

    if(FAILED(hr = get_clipbrd_window(clipbrd, &wnd))) return hr;

    if(clipbrd->src_data)
    {
        release_marshal_data(clipbrd->marshal_data);

        IDataObject_Release(clipbrd->src_data);
        clipbrd->src_data = ((void*)0);
        HeapFree(GetProcessHeap(), 0, clipbrd->cached_enum);
        clipbrd->cached_enum = ((void*)0);
    }

    if(data)
    {
        IUnknown *unk;

        IDataObject_AddRef(data);
        clipbrd->src_data = data;

        IDataObject_QueryInterface(data, &IID_IUnknown, (void**)&unk);
        hr = CoMarshalInterface(clipbrd->marshal_data, &IID_IDataObject, unk,
                                MSHCTX_LOCAL, ((void*)0), MSHLFLAGS_TABLESTRONG);
        IUnknown_Release(unk);
        if(FAILED(hr)) return hr;
        hr = set_clipboard_formats(clipbrd, data);
    }
    return hr;
}
