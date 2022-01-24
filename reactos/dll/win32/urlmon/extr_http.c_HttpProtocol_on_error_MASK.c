#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int flags; } ;
typedef  TYPE_1__ Protocol ;
typedef  int /*<<< orphan*/  HttpProtocol ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_IO_PENDING ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FLAG_FIRST_CONTINUE_COMPLETE ; 
 int /*<<< orphan*/  RPC_E_RETRY ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(Protocol *prot, DWORD error)
{
    HttpProtocol *This = FUNC3(prot);
    HRESULT hres;

    FUNC1("(%p) %d\n", prot, error);

    if(prot->flags & FLAG_FIRST_CONTINUE_COMPLETE) {
        FUNC0("Not handling error %d\n", error);
        return;
    }

    while((hres = FUNC2(This, error)) == RPC_E_RETRY) {
        error = FUNC6(This);

        if(error == ERROR_IO_PENDING || error == ERROR_SUCCESS)
            return;
    }

    FUNC4(prot, hres);
    FUNC5(prot);
    return;
}