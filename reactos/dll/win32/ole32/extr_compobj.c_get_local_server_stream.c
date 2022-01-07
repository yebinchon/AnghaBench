
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int cs; TYPE_2__* local_server; } ;
struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_8__ {int ref; int marshal_stream; TYPE_1__ IServiceProvider_iface; TYPE_3__* apt; } ;
typedef TYPE_2__ LocalServer ;
typedef int IUnknown ;
typedef int IStream ;
typedef int HRESULT ;
typedef TYPE_3__ APARTMENT ;


 int CoMarshalInterface (int ,int *,int *,int ,int *,int ) ;
 int CreateStreamOnHGlobal (int ,int ,int *) ;
 int ERR (char*,int ) ;
 int E_OUTOFMEMORY ;
 int EnterCriticalSection (int *) ;
 scalar_t__ FAILED (int ) ;
 int IID_IServiceProvider ;
 int IStream_Clone (int ,int **) ;
 int IStream_Release (int ) ;
 int LeaveCriticalSection (int *) ;
 int LocalServerVtbl ;
 int MSHCTX_LOCAL ;
 int MSHLFLAGS_TABLESTRONG ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int TRUE ;
 TYPE_2__* heap_alloc (int) ;
 int heap_free (TYPE_2__*) ;

__attribute__((used)) static HRESULT get_local_server_stream(APARTMENT *apt, IStream **ret)
{
    HRESULT hres = S_OK;

    EnterCriticalSection(&apt->cs);

    if(!apt->local_server) {
        LocalServer *obj;

        obj = heap_alloc(sizeof(*obj));
        if(obj) {
            obj->IServiceProvider_iface.lpVtbl = &LocalServerVtbl;
            obj->ref = 1;
            obj->apt = apt;

            hres = CreateStreamOnHGlobal(0, TRUE, &obj->marshal_stream);
            if(SUCCEEDED(hres)) {
                hres = CoMarshalInterface(obj->marshal_stream, &IID_IServiceProvider, (IUnknown*)&obj->IServiceProvider_iface,
                        MSHCTX_LOCAL, ((void*)0), MSHLFLAGS_TABLESTRONG);
                if(FAILED(hres))
                    IStream_Release(obj->marshal_stream);
            }

            if(SUCCEEDED(hres))
                apt->local_server = obj;
            else
                heap_free(obj);
        }else {
            hres = E_OUTOFMEMORY;
        }
    }

    if(SUCCEEDED(hres))
        hres = IStream_Clone(apt->local_server->marshal_stream, ret);

    LeaveCriticalSection(&apt->cs);

    if(FAILED(hres))
        ERR("Failed: %08x\n", hres);
    return hres;
}
