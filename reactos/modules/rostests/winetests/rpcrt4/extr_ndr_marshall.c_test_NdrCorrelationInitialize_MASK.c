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
typedef  int /*<<< orphan*/  stub_msg ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_6__ {int CorrDespIncrement; } ;
typedef  TYPE_1__ MIDL_STUB_MESSAGE ;
typedef  TYPE_1__ BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 

__attribute__((used)) static void FUNC4(void)
{
    MIDL_STUB_MESSAGE stub_msg;
    BYTE buf[256];

    FUNC2( &stub_msg, 0, sizeof(stub_msg) );
    FUNC2( buf, 0, sizeof(buf) );

    FUNC0( &stub_msg, buf, sizeof(buf), 0 );
    FUNC3( stub_msg.CorrDespIncrement == 2 ||
        FUNC1(stub_msg.CorrDespIncrement == 0), /* <= Win 2003 */
        "got %d\n", stub_msg.CorrDespIncrement );

    FUNC2( &stub_msg, 0, sizeof(stub_msg) );
    FUNC2( buf, 0, sizeof(buf) );

    stub_msg.CorrDespIncrement = 1;
    FUNC0( &stub_msg, buf, sizeof(buf), 0 );
    FUNC3( stub_msg.CorrDespIncrement == 1, "got %d\n", stub_msg.CorrDespIncrement );
}