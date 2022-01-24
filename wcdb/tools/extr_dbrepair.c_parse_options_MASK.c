#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int use_hmac; int /*<<< orphan*/  key_len; void* key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__ g_cipher_conf ; 
 char const** g_filter ; 
 int g_filter_capacity ; 
 char* g_in_path ; 
 void* g_load_master ; 
 int g_num_filter ; 
 int /*<<< orphan*/  g_options ; 
 void* g_out_key ; 
 void* g_out_path ; 
 void* g_save_master ; 
 int g_verbose ; 
 int FUNC3 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* optarg ; 
 int optind ; 
 void* FUNC4 (char const**,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(int argc, char *argv[])
{
	int opt;
	int value;
	
	if (argc < 2) FUNC9(argv[0]);

	// default to SQLCipher version 1, for compatibility to KKDB.
	FUNC5(4000);
	FUNC7(0);
	
	g_cipher_conf.use_hmac = -1;

	// parse options
	optind = 1;
	while ((opt = FUNC3(argc, argv, "hvo:K:k:M:m:", g_options, NULL)) != -1)
	{
		switch (opt)
		{
        case 'h':   // help
            FUNC9(argv[0]);
            break;
		case 'v':	// verbose
			g_verbose = 1;
			break;
		case 'o':	// output
			g_out_path = optarg;
			break;
		case 'K':	// out-key
			g_out_key = optarg;
			break;
		case 'k':	// in-key
			g_cipher_conf.key = optarg;
			g_cipher_conf.key_len = FUNC8(optarg);
			break;
		case 'f':	// filter
			if (g_num_filter == g_filter_capacity)
			{
				size_t sz = g_filter_capacity ? g_filter_capacity * 2 : 64;
				void *ptr = FUNC4(g_filter, sz * sizeof(const char *));
				if (!ptr) FUNC2(-5);
				g_filter = (const char **) ptr;
				g_filter_capacity = sz;
			}
			g_filter[g_num_filter++] = optarg;
			break;
		case 'M':	// save-master
			g_save_master = optarg;
			break;
		case 'm':	// load-master
			g_load_master = optarg;
			break;
		case 0x100:	// version
			value = FUNC1(optarg);
			if (value == 1)
			{
				FUNC5(4000);
				FUNC7(0);
			}
			else if (value == 2)
			{
				FUNC5(4000);
				FUNC7(1);
			}
			else if (value == 3)
			{
				FUNC5(64000);
				FUNC7(1);
			}
			else
			{
				FUNC0("Version must be 1, 2 or 3");
				FUNC2(-1);
			}
			break;
		case 0x101:	// page-size
			value = FUNC1(optarg);
			if (value != 512 && value != 1024 && value != 2048 && value != 4096 &&
					value != 8192 && value != 16384 && value != 32768 && value != 65536)
			{
				FUNC0("Page size must be 512, 1024, 2048, ..., or 65536");
				FUNC2(-1);
			}
            FUNC6(value);
			break;
        default:    // ?
            FUNC9(argv[0]);
		}
	}
	
	if (optind != argc - 1) 	// no database path
		FUNC9(argv[0]);
	g_in_path = argv[optind++];
	
	if (g_save_master && (g_load_master || g_out_path))
	{
		FUNC0("--save-master must be used without --load-master or --output.");
		FUNC9(argv[0]);
	}

	if (!g_out_path && !g_save_master)
	{
		FUNC0("Output path must be specified.");
		FUNC9(argv[0]);
	}
}