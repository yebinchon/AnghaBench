#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int state; int /*<<< orphan*/  callback; int /*<<< orphan*/  hres; TYPE_1__* protocol; } ;
struct TYPE_4__ {int /*<<< orphan*/  IInternetProtocolEx_iface; } ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_2__ Binding ;

/* Variables and functions */
 int BINDING_LOCKED ; 
 int BINDING_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(Binding *binding, HRESULT hres, LPCWSTR str)
{
    if(binding->state & BINDING_LOCKED) {
        FUNC1(&binding->protocol->IInternetProtocolEx_iface);
        binding->state &= ~BINDING_LOCKED;
    }

    if(!(binding->state & BINDING_STOPPED)) {
        binding->state |= BINDING_STOPPED;

        binding->hres = hres;
        FUNC0(binding->callback, hres, str);
    }
}