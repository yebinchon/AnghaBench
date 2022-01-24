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
struct TYPE_4__ {unsigned long long rto_ashift; unsigned long long rto_offset; unsigned long long rto_dcols; unsigned long long rto_dsize; size_t rto_sweep_timeout; int rto_sweep; int rto_benchmark; int rto_gdb; int rto_sanity; int /*<<< orphan*/  rto_v; } ;
typedef  TYPE_1__ raidz_test_opts_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 size_t FUNC0 (int,size_t) ; 
 unsigned long long FUNC1 (int,size_t) ; 
 int SPA_MAXBLOCKSHIFT ; 
 int SPA_MINBLOCKSHIFT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int FUNC3 (int,char**,char*) ; 
 int /*<<< orphan*/  optarg ; 
 TYPE_1__ rto_opts ; 
 int /*<<< orphan*/  rto_opts_defaults ; 
 size_t FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(int argc, char **argv)
{
	size_t value;
	int opt;

	raidz_test_opts_t *o = &rto_opts;

	FUNC2(&rto_opts_defaults, o, sizeof (*o));

	while ((opt = FUNC3(argc, argv, "TDBSvha:o:d:s:t:")) != -1) {
		value = 0;

		switch (opt) {
		case 'a':
			value = FUNC4(optarg, NULL, 0);
			o->rto_ashift = FUNC1(13, FUNC0(9, value));
			break;
		case 'o':
			value = FUNC4(optarg, NULL, 0);
			o->rto_offset = ((1ULL << FUNC1(12, value)) >> 9) << 9;
			break;
		case 'd':
			value = FUNC4(optarg, NULL, 0);
			o->rto_dcols = FUNC1(255, FUNC0(1, value));
			break;
		case 's':
			value = FUNC4(optarg, NULL, 0);
			o->rto_dsize = 1ULL <<  FUNC1(SPA_MAXBLOCKSHIFT,
			    FUNC0(SPA_MINBLOCKSHIFT, value));
			break;
		case 't':
			value = FUNC4(optarg, NULL, 0);
			o->rto_sweep_timeout = value;
			break;
		case 'v':
			o->rto_v++;
			break;
		case 'S':
			o->rto_sweep = 1;
			break;
		case 'B':
			o->rto_benchmark = 1;
			break;
		case 'D':
			o->rto_gdb = 1;
			break;
		case 'T':
			o->rto_sanity = 1;
			break;
		case 'h':
			FUNC5(B_TRUE);
			break;
		case '?':
		default:
			FUNC5(B_FALSE);
			break;
		}
	}
}