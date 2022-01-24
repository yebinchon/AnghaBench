#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  object_header_t ;
struct TYPE_6__ {struct TYPE_6__* lpszName; } ;
struct TYPE_5__ {size_t size; TYPE_3__* lpafp; TYPE_1__* lpFtpSession; } ;
struct TYPE_4__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_2__* LPWININETFTPFINDNEXTW ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC3(object_header_t *hdr)
{
    LPWININETFTPFINDNEXTW lpwfn = (LPWININETFTPFINDNEXTW) hdr;
    DWORD i;

    FUNC0("\n");

    FUNC1(&lpwfn->lpFtpSession->hdr);

    for (i = 0; i < lpwfn->size; i++)
    {
        FUNC2(lpwfn->lpafp[i].lpszName);
    }
    FUNC2(lpwfn->lpafp);
}