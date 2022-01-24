#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  children; } ;
struct TYPE_11__ {TYPE_5__ hdr; } ;
typedef  TYPE_2__ ftp_session_t ;
typedef  int /*<<< orphan*/  WININETFTPFINDNEXTW ;
struct TYPE_10__ {int /*<<< orphan*/ * hInternet; int /*<<< orphan*/  entry; int /*<<< orphan*/  dwContext; int /*<<< orphan*/  htype; } ;
struct TYPE_12__ {int index; TYPE_1__ hdr; TYPE_2__* lpFtpSession; int /*<<< orphan*/ * lpafp; int /*<<< orphan*/  size; } ;
typedef  TYPE_3__* LPWININETFTPFINDNEXTW ;
typedef  int /*<<< orphan*/  LPWIN32_FIND_DATAW ;
typedef  int /*<<< orphan*/ * LPFILEPROPERTIESW ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/ * HINTERNET ;
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FTPFINDNEXTVtbl ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_2__*,...) ; 
 int /*<<< orphan*/  WH_HFTPFINDNEXT ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 TYPE_3__* FUNC4 (TYPE_5__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HINTERNET FUNC7(ftp_session_t *lpwfs, INT nSocket, LPCWSTR lpszSearchFile,
	LPWIN32_FIND_DATAW lpFindFileData, DWORD_PTR dwContext)
{
    DWORD dwSize = 0;
    LPFILEPROPERTIESW lpafp = NULL;
    LPWININETFTPFINDNEXTW lpwfn = NULL;

    FUNC2("(%p,%d,%s,%p,%08lx)\n", lpwfs, nSocket, FUNC5(lpszSearchFile), lpFindFileData, dwContext);

    if (FUNC1(lpwfs, nSocket, lpszSearchFile, &lpafp, &dwSize))
    {
        if(lpFindFileData)
            FUNC0(lpafp, lpFindFileData);

        lpwfn = FUNC4(&lpwfs->hdr, &FTPFINDNEXTVtbl, sizeof(WININETFTPFINDNEXTW));
        if (lpwfn)
        {
            lpwfn->hdr.htype = WH_HFTPFINDNEXT;
            lpwfn->hdr.dwContext = dwContext;
            lpwfn->index = 1; /* Next index is 1 since we return index 0 */
            lpwfn->size = dwSize;
            lpwfn->lpafp = lpafp;

            FUNC3( &lpwfs->hdr );
            lpwfn->lpFtpSession = lpwfs;
            FUNC6( &lpwfs->hdr.children, &lpwfn->hdr.entry );
        }
    }

    FUNC2("Matched %d files\n", dwSize);
    return lpwfn ? lpwfn->hdr.hInternet : NULL;
}