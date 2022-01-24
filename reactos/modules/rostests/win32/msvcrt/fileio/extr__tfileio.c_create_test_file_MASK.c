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
typedef  int /*<<< orphan*/  TCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ status_flagged ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(TCHAR* file_name, TCHAR* write_mode, TCHAR* read_mode, TCHAR* file_data)
{
    if (status_flagged) {
        FUNC1(FUNC0("STATUS: Attempting to create output file %s\n"), file_name);
    }
    if (FUNC2(file_name, write_mode, file_data)) {
        if (status_flagged) {
            FUNC1(FUNC0("STATUS: Attempting to verify output file %s\n"), file_name);
        }
        if (FUNC3(file_name, read_mode, file_data)) {
            if (status_flagged) {
                FUNC1(FUNC0("SUCCESS: %s verified ok\n"), file_name);
            }
        } else {
            //_tprintf(_T("ERROR: failed to verify file %s\n"), file_name);
            return 2;
        }
    } else {
        FUNC1(FUNC0("ERROR: failed to create file %s\n"), file_name);
        return 1;
    }
    return 0;
}