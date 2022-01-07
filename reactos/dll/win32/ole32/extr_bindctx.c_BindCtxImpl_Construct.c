
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int cbStruct; scalar_t__ pServerInfo; int locale; int dwClassContext; scalar_t__ dwTrackFlags; scalar_t__ dwTickCountDeadline; int grfMode; scalar_t__ grfFlags; } ;
struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_8__ {int * bindCtxTable; scalar_t__ bindCtxTableLastIndex; scalar_t__ bindCtxTableSize; TYPE_2__ bindOption2; scalar_t__ ref; TYPE_1__ IBindCtx_iface; } ;
typedef int HRESULT ;
typedef TYPE_3__ BindCtxImpl ;
typedef int BIND_OPTS2 ;


 int CLSCTX_SERVER ;
 int GetThreadLocale () ;
 int STGM_READWRITE ;
 int S_OK ;
 int TRACE (char*,TYPE_3__*) ;
 int VT_BindCtxImpl ;

__attribute__((used)) static HRESULT BindCtxImpl_Construct(BindCtxImpl* This)
{
    TRACE("(%p)\n",This);


    This->IBindCtx_iface.lpVtbl = &VT_BindCtxImpl;
    This->ref = 0;


    This->bindOption2.cbStruct = sizeof(BIND_OPTS2);
    This->bindOption2.grfFlags = 0;
    This->bindOption2.grfMode = STGM_READWRITE;
    This->bindOption2.dwTickCountDeadline = 0;

    This->bindOption2.dwTrackFlags = 0;
    This->bindOption2.dwClassContext = CLSCTX_SERVER;
    This->bindOption2.locale = GetThreadLocale();
    This->bindOption2.pServerInfo = 0;


    This->bindCtxTableSize=0;
    This->bindCtxTableLastIndex=0;
    This->bindCtxTable = ((void*)0);

    return S_OK;
}
