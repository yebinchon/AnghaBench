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
struct TYPE_3__ {scalar_t__ scheme; int /*<<< orphan*/  script_elem; } ;
typedef  TYPE_1__ ScriptBSC ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BSCallback ;

/* Variables and functions */
 int /*<<< orphan*/  READYSTATE_LOADING ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ URL_SCHEME_HTTP ; 
 scalar_t__ URL_SCHEME_HTTPS ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC2(BSCallback *bsc)
{
    ScriptBSC *This = FUNC0(bsc);

    /* FIXME: We should find a better to decide if 'loading' state is supposed to be used by the protocol. */
    if(This->scheme == URL_SCHEME_HTTPS || This->scheme == URL_SCHEME_HTTP)
        FUNC1(This->script_elem, READYSTATE_LOADING);

    return S_OK;
}