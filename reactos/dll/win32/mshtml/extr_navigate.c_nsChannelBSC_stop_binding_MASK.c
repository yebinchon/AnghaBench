#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ nschannel; scalar_t__ is_doc_channel; } ;
typedef  TYPE_1__ nsChannelBSC ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BSCallback ;

/* Variables and functions */
 int /*<<< orphan*/  E_ABORT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC6(BSCallback *bsc, HRESULT result)
{
    nsChannelBSC *This = FUNC4(bsc);

    if(result != E_ABORT) {
        if(FUNC0(result))
            FUNC3(This, result);
        else if(This->is_doc_channel && This->nschannel) {
            result = FUNC2(This);
            if(FUNC1(result))
                return S_OK;
        }
    }

    FUNC5(This, result);
    return S_OK;
}