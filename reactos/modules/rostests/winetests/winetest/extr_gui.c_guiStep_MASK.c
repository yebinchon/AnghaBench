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
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  WPARAM ;

/* Variables and functions */
 int IDC_ST0 ; 
 int /*<<< orphan*/  PBM_SETPOS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int const,char*) ; 
 int /*<<< orphan*/  dialog ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int progressCurr ; 
 int progressGroup ; 
 int progressScale ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4 (va_list ap)
{
    const int pgID = IDC_ST0 + progressGroup * 2;
    char *str = FUNC3 (NULL, ap);
    
    progressCurr++;
    FUNC1 (dialog, pgID, str);
    FUNC0 (dialog, pgID+1, PBM_SETPOS,
                        (WPARAM)(progressScale * progressCurr), 0);
    FUNC2 (str);
    return 0;
}