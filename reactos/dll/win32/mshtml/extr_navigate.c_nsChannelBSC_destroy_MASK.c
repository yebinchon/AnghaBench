#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* nsstream; scalar_t__ nscontext; scalar_t__ nslistener; TYPE_1__* nschannel; } ;
typedef  TYPE_3__ nsChannelBSC ;
struct TYPE_7__ {int /*<<< orphan*/  nsIInputStream_iface; } ;
struct TYPE_6__ {int /*<<< orphan*/  nsIHttpChannel_iface; } ;
typedef  int /*<<< orphan*/  BSCallback ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(BSCallback *bsc)
{
    nsChannelBSC *This = FUNC1(bsc);

    if(This->nschannel)
        FUNC2(&This->nschannel->nsIHttpChannel_iface);
    if(This->nslistener)
        FUNC4(This->nslistener);
    if(This->nscontext)
        FUNC5(This->nscontext);
    if(This->nsstream)
        FUNC3(&This->nsstream->nsIInputStream_iface);
    FUNC0(This);
}