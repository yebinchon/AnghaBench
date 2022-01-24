#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  PCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int* LPWSTR ;
typedef  scalar_t__ LPCSTR ;

/* Variables and functions */
 int* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  STATUS_NO_MEMORY ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int FUNC2 (scalar_t__) ; 

NTSTATUS
FUNC3 ( LPWSTR* ppszW, LPCSTR lpszA )
{
    ULONG len;
    NTSTATUS Status;

    *ppszW = NULL;
    if ( !lpszA )
        return STATUS_SUCCESS;
    len = FUNC2(lpszA);

    *ppszW = FUNC0 ( (len+1) * sizeof(WCHAR) );
    if ( !*ppszW )
        return STATUS_NO_MEMORY;
    Status = FUNC1 ( *ppszW, len*sizeof(WCHAR), NULL, (PCHAR)lpszA, len );
    (*ppszW)[len] = L'\0';
    return Status;
}