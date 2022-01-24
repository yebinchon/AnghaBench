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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  _TEOF ; 
 int /*<<< orphan*/  _THEX_FORMAT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ status_flagged ; 
 scalar_t__ verbose_flagged ; 

__attribute__((used)) static int FUNC7(TCHAR* file_name, TCHAR* file_mode, int expected)
{
    int count = 0;
    FILE* file;
    TCHAR ch;
    int error_code;

    if (status_flagged) {
        //_tprintf(_T("STATUS: (%s) checking for %d bytes in %s mode\n"), file_name, expected, _tcschr(file_mode, _T('b')) ? _T("binary") : _T("text"));
        FUNC3(FUNC0("STATUS: (%s) checking for %d bytes with mode %s\n"), file_name, expected, file_mode);
    }
    file = FUNC2(file_name, file_mode);
    if (file == NULL) {
        FUNC3(FUNC0("ERROR: (%s) failed to open file for reading\n"), file_name);
        return 1;
    }
    while ((ch = FUNC1(file)) != _TEOF) {
        if (verbose_flagged) {
            FUNC3(_THEX_FORMAT, &ch);
        }
        ++count;
    }
    error_code = FUNC5(file);
    if (error_code) {
         FUNC3(FUNC0("ERROR: (%s) ferror returned %d after reading\n"), file_name, error_code);
         FUNC6("Read error");
    }

    if (verbose_flagged) {
//        _puttc(_T('\n'), stdout);
    }
    FUNC4(file);
    if (count == expected) {
        if (status_flagged) {
            FUNC3(FUNC0("PASSED: (%s) read %d bytes\n"), file_name, count);
        }
    } else {
        FUNC3(FUNC0("FAILED: (%s) read %d bytes but expected %d using mode \"%s\"\n"), file_name, count, expected, file_mode);
    }
    return (count == expected) ? 0 : -1;
}