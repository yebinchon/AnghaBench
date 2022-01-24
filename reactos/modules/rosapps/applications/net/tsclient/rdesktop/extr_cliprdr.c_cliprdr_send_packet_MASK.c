#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  uint16 ;
struct TYPE_6__ {int /*<<< orphan*/  channel; } ;
struct TYPE_7__ {TYPE_1__ cliprdr; } ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  TYPE_2__ RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(RDPCLIENT * This, uint16 type, uint16 status, uint8 * data, uint32 length)
{
	STREAM s;

	FUNC0(("CLIPRDR send: type=%d, status=%d, length=%d\n", type, status, length));

	s = FUNC1(This, This->cliprdr.channel, length + 12);
	FUNC3(s, type);
	FUNC3(s, status);
	FUNC5(s, length);
	FUNC6(s, data, length);
	FUNC4(s, 0);	/* pad? */
	FUNC7(s);
	FUNC2(This, s, This->cliprdr.channel);
}