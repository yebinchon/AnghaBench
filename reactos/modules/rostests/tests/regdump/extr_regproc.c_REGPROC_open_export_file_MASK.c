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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

FILE *FUNC5(TCHAR *file_name)
{
//_CRTIMP FILE * __cdecl _wfopen(const wchar_t *, const wchar_t *);

//FILE*	fopen (const char* szFileName, const char* szMode);
//FILE*	_wfopen(const wchar_t *file, const wchar_t *mode);

    FILE *file = FUNC2(file_name, FUNC0("w"));
    if (!file) {
        FUNC4("");
        FUNC3(FUNC0("REGPROC_open_export_file(%s) - Can't open file.\n"), file_name);
        //exit(1);
        return NULL;
    }
    FUNC1(FUNC0("REGEDIT4\n"), file);
    return file;
}