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
typedef  int uint_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int int64_t ;

/* Variables and functions */
#define  DATA_TYPE_BOOLEAN_VALUE 134 
#define  DATA_TYPE_INT64 133 
#define  DATA_TYPE_INT64_ARRAY 132 
#define  DATA_TYPE_NVLIST 131 
#define  DATA_TYPE_STRING 130 
#define  DATA_TYPE_STRING_ARRAY 129 
#define  DATA_TYPE_UINT64_ARRAY 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int**,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char***,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int**,int*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,int,char*) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC17(lua_State *state, nvpair_t *pair,
    char *errbuf, int errbuf_len)
{
	int err = 0;

	if (pair == NULL) {
		FUNC7(state);
		return (0);
	}

	switch (FUNC11(pair)) {
	case DATA_TYPE_BOOLEAN_VALUE:
		(void) FUNC5(state,
		    FUNC0(pair));
		break;
	case DATA_TYPE_STRING:
		(void) FUNC8(state, FUNC3(pair));
		break;
	case DATA_TYPE_INT64:
		(void) FUNC6(state, FUNC1(pair));
		break;
	case DATA_TYPE_NVLIST:
		err = FUNC16(state,
		    FUNC2(pair), errbuf, errbuf_len);
		break;
	case DATA_TYPE_STRING_ARRAY: {
		char **strarr;
		uint_t nelem;
		(void) FUNC13(pair, &strarr, &nelem);
		FUNC4(state);
		for (int i = 0; i < nelem; i++) {
			(void) FUNC6(state, i + 1);
			(void) FUNC8(state, strarr[i]);
			(void) FUNC9(state, -3);
		}
		break;
	}
	case DATA_TYPE_UINT64_ARRAY: {
		uint64_t *intarr;
		uint_t nelem;
		(void) FUNC14(pair, &intarr, &nelem);
		FUNC4(state);
		for (int i = 0; i < nelem; i++) {
			(void) FUNC6(state, i + 1);
			(void) FUNC6(state, intarr[i]);
			(void) FUNC9(state, -3);
		}
		break;
	}
	case DATA_TYPE_INT64_ARRAY: {
		int64_t *intarr;
		uint_t nelem;
		(void) FUNC12(pair, &intarr, &nelem);
		FUNC4(state);
		for (int i = 0; i < nelem; i++) {
			(void) FUNC6(state, i + 1);
			(void) FUNC6(state, intarr[i]);
			(void) FUNC9(state, -3);
		}
		break;
	}
	default: {
		if (errbuf != NULL) {
			(void) FUNC15(errbuf, errbuf_len,
			    "Unhandled nvpair type %d for key '%s'",
			    FUNC11(pair), FUNC10(pair));
		}
		return (EINVAL);
	}
	}
	return (err);
}