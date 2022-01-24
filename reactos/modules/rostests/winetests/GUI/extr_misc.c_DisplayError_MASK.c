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
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  INT ;

/* Variables and functions */
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ; 
 int FORMAT_MESSAGE_FROM_SYSTEM ; 
 int FORMAT_MESSAGE_IGNORE_INSERTS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LANG_NEUTRAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MB_ICONERROR ; 
 int MB_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  SUBLANG_DEFAULT ; 

VOID FUNC4(INT err)
{
    LPWSTR lpMsgBuf = NULL;

    FUNC0(FORMAT_MESSAGE_ALLOCATE_BUFFER |
                   FORMAT_MESSAGE_FROM_SYSTEM |
                   FORMAT_MESSAGE_IGNORE_INSERTS,
                   NULL,
                   err,
                   FUNC2(LANG_NEUTRAL, SUBLANG_DEFAULT),
                   (VOID*)&lpMsgBuf,
                   0,
                   NULL );

    FUNC3(NULL, lpMsgBuf, L"Error!", MB_OK | MB_ICONERROR);

    FUNC1(lpMsgBuf);
}