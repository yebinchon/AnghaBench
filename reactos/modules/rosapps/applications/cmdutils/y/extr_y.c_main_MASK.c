#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buff ;
struct TYPE_4__ {char* cFileName; } ;
typedef  TYPE_1__ WIN32_FIND_DATA ;
typedef  int INT ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int BUFF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (char*,TYPE_1__*) ; 
 scalar_t__ FUNC6 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 scalar_t__ FUNC8 (scalar_t__,char*,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STD_INPUT_HANDLE ; 
 int /*<<< orphan*/  STD_OUTPUT_HANDLE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,char*,scalar_t__,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (char*,int /*<<< orphan*/ ,int) ; 

int FUNC13 (int argc, char **argv)
{
	INT i;
	HANDLE hFind;
	HANDLE hConsoleIn, hConsoleOut, hFile;
	char buff[BUFF_SIZE];
	DWORD dwRead,dwWritten;
	BOOL bRet;
	WIN32_FIND_DATA FindData;

	hConsoleIn = FUNC7(STD_INPUT_HANDLE);
	hConsoleOut = FUNC7(STD_OUTPUT_HANDLE);

	if (argc == 2 && FUNC12 (argv[1], FUNC11("/?"), 2) == 0)
	{
		FUNC2(FUNC11("copy stdin to stdout and then files to stdout\n"
		              "\n"
		              "Y [files]\n"
		              "\n"
		              "files         files to copy to stdout"));
		return 0;
	}

	/*stdin to stdout*/
	do
	{
		bRet = FUNC8(hConsoleIn,buff,sizeof(buff),&dwRead,NULL);

		if (dwRead>0 && bRet)
			FUNC10(hConsoleOut,buff,dwRead,&dwWritten,NULL);

	} while(dwRead>0 && bRet);


	/*files to stdout*/
	FUNC9(0);

	for (i = 1; i < argc; i++)
	{
		hFind=FUNC5(argv[i],&FindData);

		if (hFind==INVALID_HANDLE_VALUE)
		{
			FUNC1("File not found - %s\n",argv[i]);
			continue;
		}

		do
		{
			hFile = FUNC3(FindData.cFileName,
				GENERIC_READ,
				FILE_SHARE_READ,NULL,
				OPEN_EXISTING,
				FILE_ATTRIBUTE_NORMAL,NULL);

			if(hFile == INVALID_HANDLE_VALUE)
			{
				FUNC1("File not found - %s\n",FindData.cFileName);
				continue;
			}

			do
			{
				bRet = FUNC8(hFile,buff,sizeof(buff),&dwRead,NULL);

				if (dwRead>0 && bRet)
					FUNC10(hConsoleOut,buff,dwRead,&dwWritten,NULL);

			} while(dwRead>0 && bRet);

			FUNC0(hFile);

		}
		while(FUNC6(hFind,&FindData));

		FUNC4(hFind);
	}

	return 0;
}