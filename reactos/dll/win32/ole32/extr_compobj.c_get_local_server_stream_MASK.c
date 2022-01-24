#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  cs; TYPE_2__* local_server; } ;
struct TYPE_7__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_8__ {int ref; int /*<<< orphan*/  marshal_stream; TYPE_1__ IServiceProvider_iface; TYPE_3__* apt; } ;
typedef  TYPE_2__ LocalServer ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_3__ APARTMENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IServiceProvider ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LocalServerVtbl ; 
 int /*<<< orphan*/  MSHCTX_LOCAL ; 
 int /*<<< orphan*/  MSHLFLAGS_TABLESTRONG ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_2__* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

__attribute__((used)) static HRESULT FUNC11(APARTMENT *apt, IStream **ret)
{
    HRESULT hres = S_OK;

    FUNC3(&apt->cs);

    if(!apt->local_server) {
        LocalServer *obj;

        obj = FUNC9(sizeof(*obj));
        if(obj) {
            obj->IServiceProvider_iface.lpVtbl = &LocalServerVtbl;
            obj->ref = 1;
            obj->apt = apt;

            hres = FUNC1(0, TRUE, &obj->marshal_stream);
            if(FUNC8(hres)) {
                hres = FUNC0(obj->marshal_stream, &IID_IServiceProvider, (IUnknown*)&obj->IServiceProvider_iface,
                        MSHCTX_LOCAL, NULL, MSHLFLAGS_TABLESTRONG);
                if(FUNC4(hres))
                    FUNC6(obj->marshal_stream);
            }

            if(FUNC8(hres))
                apt->local_server = obj;
            else
                FUNC10(obj);
        }else {
            hres = E_OUTOFMEMORY;
        }
    }

    if(FUNC8(hres))
        hres = FUNC5(apt->local_server->marshal_stream, ret);

    FUNC7(&apt->cs);

    if(FUNC4(hres))
        FUNC2("Failed: %08x\n", hres);
    return hres;
}