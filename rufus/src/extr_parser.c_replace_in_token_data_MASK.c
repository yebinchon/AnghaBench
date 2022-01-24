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
 scalar_t__ FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int,int) ; 
 char* conversion_error ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *) ; 
 int FUNC9 (char*,size_t,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,size_t,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ FUNC14 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 char* FUNC16 (char const*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 int FUNC18 (char*) ; 
 size_t FUNC19 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC20 (char*,char*) ; 
 int /*<<< orphan*/  wspace ; 

char* FUNC21(const char* filename, const char* token, const char* src, const char* rep, BOOL dos2unix)
{
	const wchar_t* outmode[] = { L"w", L"w, ccs=UTF-8", L"w, ccs=UTF-16LE" };
	wchar_t *wtoken = NULL, *wfilename = NULL, *wtmpname = NULL, *wsrc = NULL, *wrep = NULL, bom = 0;
	wchar_t buf[1024], *torep;
	FILE *fd_in = NULL, *fd_out = NULL;
	size_t i, ns, size;
	int mode = 0;
	char *ret = NULL, tmp[2];

	if ((filename == NULL) || (token == NULL) || (src == NULL) || (rep == NULL))
		return NULL;
	if ((filename[0] == 0) || (token[0] == 0) || (src[0] == 0) || (rep[0] == 0))
		return NULL;
	if (FUNC14(src, rep) == 0)	// No need for processing is source is same as replacement
		return NULL;

	wfilename = FUNC16(filename);
	if (wfilename == NULL) {
		FUNC15(conversion_error, filename);
		goto out;
	}
	wtoken = FUNC16(token);
	if (wfilename == NULL) {
		FUNC15(conversion_error, token);
		goto out;
	}
	wsrc = FUNC16(src);
	if (wsrc == NULL) {
		FUNC15(conversion_error, src);
		goto out;
	}
	wrep = FUNC16(rep);
	if (wsrc == NULL) {
		FUNC15(conversion_error, rep);
		goto out;
	}

	fd_in = FUNC2(wfilename, L"r, ccs=UNICODE");
	if (fd_in == NULL) {
		FUNC15("Could not open file '%s'\n", filename);
		goto out;
	}
	// Check the input file's BOM and create an output file with the same
	if (FUNC9(&bom, sizeof(bom), 1, fd_in) != 1) {
		if (!FUNC6(fd_in))
			FUNC15("Could not read file '%s'\n", filename);
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
	FUNC10(fd_in, 0, SEEK_SET);
//	duprintf("'%s' was detected as %s\n", filename,
//		(mode==0)?"ANSI/UTF8 (no BOM)":((mode==1)?"UTF8 (with BOM)":"UTF16 (with BOM"));


	wtmpname = (wchar_t*)FUNC4(FUNC18(wfilename)+2, sizeof(wchar_t));
	if (wtmpname == NULL) {
		FUNC15("Could not allocate space for temporary output name\n");
		goto out;
	}
	FUNC17(wtmpname, wfilename);
	wtmpname[FUNC18(wtmpname)] = '~';

	fd_out = FUNC2(wtmpname, outmode[mode]);
	if (fd_out == NULL) {
		FUNC15("Could not open temporary output file '%s~'\n", filename);
		goto out;
	}

	// Process individual lines. NUL is always appended.
	while (FUNC7(buf, FUNC0(buf), fd_in) != NULL) {

		i = 0;

		// Skip leading spaces
		i += FUNC19(&buf[i], wspace);

		// Our token should begin a line
		if (FUNC1(&buf[i], wtoken, FUNC18(wtoken)) != 0) {
			FUNC8(buf, fd_out);
			continue;
		}

		// Token was found, move past token
		i += FUNC18(wtoken);

		// Skip whitespaces after token (while making sure there's at least one)
		ns = FUNC19(&buf[i], wspace);
		if (ns == 0)
			continue;
		i += ns;

		torep = FUNC20(&buf[i], wsrc);
		if (torep == NULL) {
			FUNC8(buf, fd_out);
			continue;
		}

		i = (torep-buf) + FUNC18(wsrc);
		*torep = 0;
		// coverity[invalid_type]
		FUNC11(fd_out, L"%s%s%s", buf, wrep, &buf[i]);
		ret = (char*)rep;
	}

out:
	if (fd_in != NULL) FUNC5(fd_in);
	if (fd_out != NULL) FUNC5(fd_out);

	// If a replacement occurred, delete existing file and use the new one
	if (ret != NULL) {
		// We're in Windows text mode => Remove CRs if requested
		fd_in = FUNC2(wtmpname, L"rb");
		fd_out = FUNC2(wfilename, L"wb");
		// Don't check fds
		if ((fd_in != NULL) && (fd_out != NULL)) {
			size = (mode==2)?2:1;
			while(FUNC9(tmp, size, 1, fd_in) == 1) {
				if ((!dos2unix) || (tmp[0] != 0x0D))
					FUNC12(tmp, size, 1, fd_out);
			}
			FUNC5(fd_in);
			FUNC5(fd_out);
		} else {
			FUNC15("Could not write '%s' - original file has been left unmodified.\n", filename);
			ret = NULL;
			if (fd_in != NULL) FUNC5(fd_in);
			if (fd_out != NULL) FUNC5(fd_out);
		}
	}
	if (wtmpname != NULL)
		FUNC3(wtmpname);
	FUNC13(wfilename);
	FUNC13(wtmpname);
	FUNC13(wtoken);
	FUNC13(wsrc);
	FUNC13(wrep);

	return ret;
}