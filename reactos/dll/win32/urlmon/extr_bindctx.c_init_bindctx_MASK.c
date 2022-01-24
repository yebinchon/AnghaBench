#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int cbStruct; int grfMode; scalar_t__ dwTickCountDeadline; int /*<<< orphan*/  grfFlags; } ;
typedef  int /*<<< orphan*/  IEnumFORMATETC ;
typedef  int /*<<< orphan*/  IBindStatusCallback ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_1__ BIND_OPTS ;

/* Variables and functions */
 int /*<<< orphan*/  BIND_MAYBOTHERUSER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int STGM_READWRITE ; 
 int STGM_SHARE_EXCLUSIVE ; 
 int /*<<< orphan*/  S_OK ; 

__attribute__((used)) static HRESULT FUNC4(IBindCtx *bindctx, DWORD options,
       IBindStatusCallback *callback, IEnumFORMATETC *format)
{
    BIND_OPTS bindopts;
    HRESULT hres;

    if(options)
        FUNC1("not supported options %08x\n", options);
    if(format)
        FUNC1("format is not supported\n");

    bindopts.cbStruct = sizeof(BIND_OPTS);
    bindopts.grfFlags = BIND_MAYBOTHERUSER;
    bindopts.grfMode = STGM_READWRITE | STGM_SHARE_EXCLUSIVE;
    bindopts.dwTickCountDeadline = 0;

    hres = FUNC2(bindctx, &bindopts);
    if(FUNC0(hres))
       return hres;

    if(callback) {
        hres = FUNC3(bindctx, callback, NULL, 0);
        if(FUNC0(hres))
            return hres;
    }

    return S_OK;
}