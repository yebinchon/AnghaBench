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
typedef  int UINT ;
typedef  char TCHAR ;
typedef  scalar_t__ HINSTANCE ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int _MAX_PATH ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC10(
	int	argc,
	char *	argv []
	)
{
	HINSTANCE	dll;
	TCHAR		ModuleName [_MAX_PATH];

	if (argc < 2)
	{
		FUNC8(
			stderr,
			"\
ReactOS System Tools\n\
Check a Dynamic Link Library (DLL) for loading\n\
Copyright (c) 1998, 1999 Emanuele Aliberti\n\n\
usage: %s module [symbol [, ...]]\n",
			argv[0]
			);
		FUNC7(EXIT_FAILURE);
	}
	dll = FUNC5(argv[1]);
	if (!dll)
	{
		UINT    LastError;

		LastError = FUNC3();
		FUNC6(L"LoadLibrary",LastError);
		FUNC8(
			stderr,
			"%s: loading %s failed (%d).\n",
			argv[0],
			argv[1],
			LastError
			);
		FUNC7(EXIT_FAILURE);
	}
	FUNC4(
		(HANDLE) dll,
		ModuleName,
		sizeof ModuleName
		);
	FUNC9(
		"%s loaded.\n",
		ModuleName
		);
#ifdef DISPLAY_VERSION
	DisplayVersion(dll,ModuleName);
#endif
	if (argc > 2)
	{
		int	CurrentSymbol;

		for (	CurrentSymbol = 2;
			(CurrentSymbol < argc);
			++CurrentSymbol
			)
		{
			FUNC0( dll, argv[CurrentSymbol] );
		}
	}
	FUNC2(dll);
	FUNC9(
		"%s unloaded.\n",
		ModuleName
		);
	return EXIT_SUCCESS;
}