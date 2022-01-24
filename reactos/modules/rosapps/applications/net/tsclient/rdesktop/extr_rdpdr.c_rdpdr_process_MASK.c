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
typedef  char uint8 ;
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_7__ {scalar_t__ p; scalar_t__ end; } ;
typedef  TYPE_1__* STREAM ;
typedef  int /*<<< orphan*/  RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,char,char,char,char) ; 

__attribute__((used)) static void
FUNC12(RDPCLIENT * This, STREAM s)
{
	uint32 handle;
	uint8 *magic;

#if WITH_DEBUG_RDP5
	printf("--- rdpdr_process ---\n");
	hexdump(s->p, s->end - s->p);
#endif
	FUNC3(s, magic, 4);

	if ((magic[0] == 'r') && (magic[1] == 'D'))
	{
		if ((magic[2] == 'R') && (magic[3] == 'I'))
		{
			FUNC6(This, s);
			return;
		}
		if ((magic[2] == 'n') && (magic[3] == 'I'))
		{
			FUNC9(This);
			FUNC10(This);
			return;
		}
		if ((magic[2] == 'C') && (magic[3] == 'C'))
		{
			/* connect from server */
			FUNC8(This);
			FUNC7(This);
			return;
		}
		if ((magic[2] == 'r') && (magic[3] == 'd'))
		{
			/* connect to a specific resource */
			FUNC2(s, handle);
#if WITH_DEBUG_RDP5
			DEBUG(("RDPDR: Server connected to resource %d\n", handle));
#endif
			return;
		}
		if ((magic[2] == 'P') && (magic[3] == 'S'))
		{
			/* server capability */
			return;
		}
	}
	if ((magic[0] == 'R') && (magic[1] == 'P'))
	{
		if ((magic[2] == 'C') && (magic[3] == 'P'))
		{
			FUNC4(This, s);
			return;
		}
	}
	FUNC11("RDPDR packet type %c%c%c%c\n", magic[0], magic[1], magic[2], magic[3]);
}