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
typedef  int /*<<< orphan*/  overlapped ;
struct TYPE_6__ {scalar_t__ sock; } ;
struct TYPE_8__ {int disconnect_reason; TYPE_1__ tcp; } ;
struct TYPE_7__ {scalar_t__ data; scalar_t__ end; } ;
typedef  TYPE_2__* STREAM ;
typedef  TYPE_3__ RDPCLIENT ;
typedef  int /*<<< orphan*/  OVERLAPPED ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  True ; 
#define  WAIT_IO_COMPLETION 130 
#define  WAIT_OBJECT_0 129 
#define  WAIT_TIMEOUT 128 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

BOOL
FUNC5(RDPCLIENT * This, STREAM s)
{
	int length = (int)(s->end - s->data);
	int total = 0;
	DWORD sent;

	OVERLAPPED overlapped;
	FUNC4(&overlapped, 0, sizeof(overlapped));

	while (total < length)
	{
		FUNC3((HANDLE)This->tcp.sock, s->data + total, length - total, NULL, &overlapped);

		switch(FUNC2((HANDLE)This->tcp.sock, INFINITE, TRUE))
		{
			/* Success */
		case WAIT_OBJECT_0:
			break;

			/* Timeout or error */
		case WAIT_TIMEOUT:
		default:
			This->disconnect_reason = 772;

			/* Aborted, must disconnect ASAP */
		case WAIT_IO_COMPLETION:
			FUNC0((HANDLE)This->tcp.sock);
			break;
		}

		/* Wait for completion. We could hang here, but we shouldn't */
		if(!FUNC1((HANDLE)This->tcp.sock, &overlapped, &sent, TRUE))
			return False;

		total += sent;
	}

	return True;
}