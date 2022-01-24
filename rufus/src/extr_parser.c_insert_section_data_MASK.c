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
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  bom ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC1 (char*,char*,size_t) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int,int) ; 
 char* conversion_error ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *) ; 
 int FUNC8 (char*,size_t,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,size_t,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 char* FUNC14 (char const*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 size_t FUNC16 (char*) ; 
 scalar_t__ FUNC17 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wspace ; 

char* FUNC18(const char* filename, const char* section, const char* data, BOOL dos2unix)
{
	const wchar_t* outmode[] = { L"w", L"w, ccs=UTF-8", L"w, ccs=UTF-16LE" };
	wchar_t *wsection = NULL, *wfilename = NULL, *wtmpname = NULL, *wdata = NULL, bom = 0;
	wchar_t buf[1024];
	FILE *fd_in = NULL, *fd_out = NULL;
	size_t i, size;
	int mode = 0;
	char *ret = NULL, tmp[2];

	if ((filename == NULL) || (section == NULL) || (data == NULL))
		return NULL;
	if ((filename[0] == 0) || (section[0] == 0) || (data[0] == 0))
		return NULL;

	wfilename = FUNC14(filename);
	if (wfilename == NULL) {
		FUNC13(conversion_error, filename);
		goto out;
	}
	wsection = FUNC14(section);
	if (wfilename == NULL) {
		FUNC13(conversion_error, section);
		goto out;
	}
	wdata = FUNC14(data);
	if (wdata == NULL) {
		FUNC13(conversion_error, data);
		goto out;
	}

	fd_in = FUNC2(wfilename, L"r, ccs=UNICODE");
	if (fd_in == NULL) {
		FUNC13("Could not open file '%s'\n", filename);
		goto out;
	}
	// Check the input file's BOM and create an output file with the same
	if (FUNC8(&bom, sizeof(bom), 1, fd_in) != 1) {
		FUNC13("Could not read file '%s'\n", filename);
		goto out;
	}
	switch(bom) {
	case 0xFEFF:
		mode = 2;	// UTF-16 (LE)
		break;
	case 0xBBEF:	// Yeah, the UTF-8 BOM is really 0xEF,0xBB,0xBF, but
		mode = 1;	// find me a non UTF-8 file that actually begins with "ï»"
		break;
	default:
		mode = 0;	// ANSI
		break;
	}
	FUNC9(fd_in, 0, SEEK_SET);
//	duprintf("'%s' was detected as %s\n", filename,
//		(mode==0)?"ANSI/UTF8 (no BOM)":((mode==1)?"UTF8 (with BOM)":"UTF16 (with BOM"));

	wtmpname = (wchar_t*)FUNC4(FUNC16(wfilename)+2, sizeof(wchar_t));
	if (wtmpname == NULL) {
		FUNC13("Could not allocate space for temporary output name\n");
		goto out;
	}
	FUNC15(wtmpname, wfilename);
	wtmpname[FUNC16(wtmpname)] = '~';

	fd_out = FUNC2(wtmpname, outmode[mode]);
	if (fd_out == NULL) {
		FUNC13("Could not open temporary output file '%s~'\n", filename);
		goto out;
	}

	// Process individual lines. NUL is always appended.
	while (FUNC6(buf, FUNC0(buf), fd_in) != NULL) {

		i = 0;

		// Skip leading spaces
		i += FUNC17(&buf[i], wspace);

		// Our token should begin a line
		if (FUNC1(&buf[i], wsection, FUNC16(wsection)) != 0) {
			FUNC7(buf, fd_out);
			continue;
		}

		// Section was found, output it
		FUNC7(buf, fd_out);
		// Now output the new data
		// coverity[invalid_type]
		FUNC10(fd_out, L"%s\n", wdata);
		ret = (char*)data;
	}

out:
	if (fd_in != NULL) FUNC5(fd_in);
	if (fd_out != NULL) FUNC5(fd_out);

	// If an insertion occurred, delete existing file and use the new one
	if (ret != NULL) {
		// We're in Windows text mode => Remove CRs if requested
		fd_in = FUNC2(wtmpname, L"rb");
		fd_out = FUNC2(wfilename, L"wb");
		// Don't check fds
		if ((fd_in != NULL) && (fd_out != NULL)) {
			size = (mode==2)?2:1;
			while(FUNC8(tmp, size, 1, fd_in) == 1) {
				if ((!dos2unix) || (tmp[0] != 0x0D))
					FUNC11(tmp, size, 1, fd_out);
			}
			FUNC5(fd_in);
			FUNC5(fd_out);
		} else {
			FUNC13("Could not write '%s' - original file has been left unmodified\n", filename);
			ret = NULL;
			if (fd_in != NULL) FUNC5(fd_in);
			if (fd_out != NULL) FUNC5(fd_out);
		}
	}
	if (wtmpname != NULL)
		FUNC3(wtmpname);
	FUNC12(wfilename);
	FUNC12(wtmpname);
	FUNC12(wsection);
	FUNC12(wdata);

	return ret;
}