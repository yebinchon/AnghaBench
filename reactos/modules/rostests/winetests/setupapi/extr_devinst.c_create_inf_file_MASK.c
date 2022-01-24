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
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(LPCSTR filename)
{
    DWORD dwNumberOfBytesWritten;
    HANDLE hf = FUNC1(filename, GENERIC_WRITE, 0, NULL,
                            CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL);

    static const char data[] =
        "[Version]\n"
        "Signature=\"$Chicago$\"\n"
        "Class=Bogus\n"
        "ClassGUID={6a55b5a4-3f65-11db-b704-0011955c2bdb}\n"
        "[ClassInstall32]\n"
        "AddReg=BogusClass.NT.AddReg\n"
        "[BogusClass.NT.AddReg]\n"
        "HKR,,,,\"Wine test devices\"\n";

    FUNC2(hf, data, sizeof(data) - 1, &dwNumberOfBytesWritten, NULL);
    FUNC0(hf);
}