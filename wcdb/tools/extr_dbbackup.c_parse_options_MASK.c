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

/* Variables and functions */
 int /*<<< orphan*/  DBBAK_OP_BACKUP ; 
 int /*<<< orphan*/  DBBAK_OP_RECOVER ; 
 int /*<<< orphan*/  MMBAK_FLAG_FIX_CORRUPTION ; 
 int /*<<< orphan*/  MMBAK_FLAG_INCREMENTAL ; 
 int /*<<< orphan*/  MMBAK_FLAG_NO_CIPHER ; 
 int /*<<< orphan*/  MMBAK_FLAG_NO_COMPRESS ; 
 int /*<<< orphan*/  MMBAK_FLAG_NO_CREATE_TABLE ; 
 int /*<<< orphan*/  MMBAK_LOG_ERROR ; 
 int FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* g_db_path ; 
 void* g_dbkey ; 
 void* g_dump_path ; 
 int /*<<< orphan*/  g_flags ; 
 int /*<<< orphan*/ * g_key ; 
 int /*<<< orphan*/  g_operation ; 
 int /*<<< orphan*/  g_options ; 
 void* g_tabdesc_path ; 
 int g_verbose ; 
 int FUNC2 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9(int argc, char *argv[])
{
	int opt;
	int value;
	
	// parse operation
	if (argc < 2) FUNC8(argv[0]);
	
	const char *opstr = argv[1];
	if (!FUNC7(opstr, "backup"))
		g_operation = DBBAK_OP_BACKUP;
	else if (!FUNC7(opstr, "recover"))
		g_operation = DBBAK_OP_RECOVER;
	else FUNC8(argv[0]);

	// default to SQLCipher version 1, thanks to kkdb.
	FUNC4(4000);
	FUNC6(0);
	
	// parse options
	optind = 2;
	while ((opt = FUNC2(argc, argv, "vzZfFtTio:d:K:k:", g_options, NULL)) != -1)
	{
		switch (opt)
		{
		case 'v':	// verbose
			g_verbose = 1;
			break;
		case 'z':	// compress
			g_flags &= (~MMBAK_FLAG_NO_COMPRESS);
			break;
		case 'Z':	// no-compress
			g_flags |= MMBAK_FLAG_NO_COMPRESS;
			break;
		case 'f':	// fix
			g_flags |= MMBAK_FLAG_FIX_CORRUPTION;
			break;
		case 'F':	// no-fix
			g_flags &= (~MMBAK_FLAG_FIX_CORRUPTION);
			break;
		case 't':	// create-table
			g_flags &= (~MMBAK_FLAG_NO_CREATE_TABLE);
			break;
		case 'T':	// no-create-table
			g_flags |= MMBAK_FLAG_NO_CREATE_TABLE;
			break;
		case 'i':	// incremental
			g_flags |= MMBAK_FLAG_INCREMENTAL;
			break;
		case 'o':	// output
			g_dump_path = optarg;
			break;
		case 'd':	// tabdesc
			g_tabdesc_path = optarg;
			break;
		case 'K':	// dbkey
			g_dbkey = optarg;
			break;
		case 'k':	// key
			g_key = optarg;
			break;
		case 0x100:	// version
			value = FUNC0(optarg);
			if (value == 1)
			{
				FUNC4(4000);
				FUNC6(0);
			}
			else if (value == 2)
			{
				FUNC4(4000);
				FUNC6(1);
			}
			else if (value == 3)
			{
				FUNC4(64000);
				FUNC6(1);
			}
			else
			{
				FUNC3(MMBAK_LOG_ERROR, "Version must be 1, 2 or 3");
				FUNC1(-1);
			}
			break;
		case 0x101:	// page-size
			value = FUNC0(optarg);
			if (value != 512 && value != 1024 && value != 2048 && value != 4096 &&
					value != 8192 && value != 16384 && value != 32768 && value != 65536)
			{
				FUNC3(MMBAK_LOG_ERROR, "Page size must be 512, 1024, 2048, ..., 65536");
				FUNC1(-1);
			}
			FUNC5(value);
			break;
		default:	// ?
			FUNC8(argv[0]);
		}
	}
	
	if (optind != argc - 1) 	// no database path
		FUNC8(argv[0]);
	g_db_path = argv[optind++];
	
	if (!g_dump_path)
	{
		FUNC3(MMBAK_LOG_ERROR, "Output path must be specified.");
		FUNC8(argv[0]);
	}
	
	if (g_key == NULL)
		g_flags |= MMBAK_FLAG_NO_CIPHER;
}