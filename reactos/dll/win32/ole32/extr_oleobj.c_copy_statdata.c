
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwConnection; scalar_t__ pAdvSink; int advf; int formatetc; } ;
typedef TYPE_1__ STATDATA ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int IAdviseSink_AddRef (scalar_t__) ;
 int S_OK ;
 int copy_formatetc (int *,int *) ;

__attribute__((used)) static HRESULT copy_statdata(STATDATA *dst, const STATDATA *src)
{
    HRESULT hr;

    hr = copy_formatetc( &dst->formatetc, &src->formatetc );
    if (FAILED(hr)) return hr;
    dst->advf = src->advf;
    dst->pAdvSink = src->pAdvSink;
    if (dst->pAdvSink) IAdviseSink_AddRef( dst->pAdvSink );
    dst->dwConnection = src->dwConnection;
    return S_OK;
}
