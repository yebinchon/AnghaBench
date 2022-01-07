
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int marshal_data; } ;
typedef TYPE_1__ ole_clipbrd ;
typedef int IDataObject ;
typedef int HRESULT ;
typedef int HGLOBAL ;


 int CLIPBRD_E_CANT_SET ;
 int E_OUTOFMEMORY ;
 int GMEM_DDESHARE ;
 int GMEM_MOVEABLE ;
 int GetHGlobalFromStream (int ,int *) ;
 int GlobalAlloc (int,int) ;
 int GlobalFree (int ) ;
 int S_OK ;
 int SetClipboardData (int ,int ) ;
 int dup_global_mem (int ,int,int *) ;
 int wine_marshal_clipboard_format ;

__attribute__((used)) static HRESULT expose_marshalled_dataobject(ole_clipbrd *clipbrd, IDataObject *data)
{
    HGLOBAL h;

    if(data)
    {
        HGLOBAL h_stm;
        GetHGlobalFromStream(clipbrd->marshal_data, &h_stm);
        dup_global_mem(h_stm, GMEM_DDESHARE|GMEM_MOVEABLE, &h);
    }
    else
        h = GlobalAlloc(GMEM_DDESHARE|GMEM_MOVEABLE, 1);

    if(!h) return E_OUTOFMEMORY;

    if(!SetClipboardData(wine_marshal_clipboard_format, h))
    {
        GlobalFree(h);
        return CLIPBRD_E_CANT_SET;
    }
    return S_OK;
}
