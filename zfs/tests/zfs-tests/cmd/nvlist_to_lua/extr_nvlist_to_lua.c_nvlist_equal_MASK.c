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
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
#define  DATA_TYPE_BOOLEAN_VALUE 131 
#define  DATA_TYPE_INT64 130 
#define  DATA_TYPE_NVLIST 129 
#define  DATA_TYPE_STRING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static boolean_t
FUNC16(nvlist_t *nvla, nvlist_t *nvlb)
{
	if (FUNC5(nvla) != FUNC5(nvlb))
		return (B_FALSE);
	/*
	 * The nvlists have the same number of pairs and keys are unique, so
	 * if every key in A is also in B and assigned to the same value, the
	 * lists are identical.
	 */
	for (nvpair_t *pair = FUNC11(nvla, NULL);
	    pair != NULL; pair = FUNC11(nvla, pair)) {
		char *key = FUNC12(pair);

		if (!FUNC10(nvlb, key))
			return (B_FALSE);

		if (FUNC13(pair) !=
		    FUNC13(FUNC3(nvlb, key)))
			return (B_FALSE);

		switch (FUNC13(pair)) {
		case DATA_TYPE_BOOLEAN_VALUE:
			if (FUNC6(pair) !=
			    FUNC0(nvlb, key)) {
				return (B_FALSE);
			}
			break;
		case DATA_TYPE_STRING:
			if (FUNC15(FUNC9(pair),
			    FUNC4(nvlb, key))) {
				return (B_FALSE);
			}
			break;
		case DATA_TYPE_INT64:
			if (FUNC7(pair) !=
			    FUNC1(nvlb, key)) {
				return (B_FALSE);
			}
			break;
		case DATA_TYPE_NVLIST:
			if (!FUNC16(FUNC8(pair),
			    FUNC2(nvlb, key))) {
				return (B_FALSE);
			}
			break;
		default:
			(void) FUNC14("Unexpected type for nvlist_equal\n");
			return (B_FALSE);
		}
	}
	return (B_TRUE);
}