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
typedef  int /*<<< orphan*/  szCopy ;
struct TYPE_4__ {char* key; char* value; struct TYPE_4__* nextPtr; } ;
typedef  TYPE_1__ list_item_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,char*,char*) ; 
 scalar_t__ FUNC4 (unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (char*,char*) ; 

__attribute__((used)) static int
FUNC11(
    const char *substitutions,
    const char *filename)
{
    size_t cbBuffer = 1024;
    static char szBuffer[1024], szCopy[1024];
    char *szResult = NULL;
    list_item_t *substPtr = NULL;
    FILE *fp, *sp;

    fp = FUNC2(filename, "rt");
    if (fp != NULL) {

	/*
	 * Build a list of substutitions from the first filename
	 */

	sp = FUNC2(substitutions, "rt");
	if (sp != NULL) {
	    while (FUNC1(szBuffer, cbBuffer, sp) != NULL) {
		unsigned char *ks, *ke, *vs, *ve;
		ks = (unsigned char*)szBuffer;
		while (ks && *ks && FUNC4(*ks)) ++ks;
		ke = ks;
		while (ke && *ke && !FUNC4(*ke)) ++ke;
		vs = ke;
		while (vs && *vs && FUNC4(*vs)) ++vs;
		ve = vs;
		while (ve && *ve && !(*ve == '\r' || *ve == '\n')) ++ve;
		*ke = 0, *ve = 0;
		FUNC6(&substPtr, (char*)ks, (char*)vs);
	    }
	    FUNC0(sp);
	}

	/* debug: dump the list */
#ifdef _DEBUG
	{
	    int n = 0;
	    list_item_t *p = NULL;
	    for (p = substPtr; p != NULL; p = p->nextPtr, ++n) {
		fprintf(stderr, "% 3d '%s' => '%s'\n", n, p->key, p->value);
	    }
	}
#endif
	
	/*
	 * Run the substitutions over each line of the input
	 */
	
	while (FUNC1(szBuffer, cbBuffer, fp) != NULL) {
	    list_item_t *p = NULL;
	    for (p = substPtr; p != NULL; p = p->nextPtr) {
		char *m = FUNC10(szBuffer, p->key);
		if (m) {
		    char *cp, *op, *sp;
		    cp = szCopy;
		    op = szBuffer;
		    while (op != m) *cp++ = *op++;
		    sp = p->value;
		    while (sp && *sp) *cp++ = *sp++;
		    op += FUNC9(p->key);
		    while (*op) *cp++ = *op++;
		    *cp = 0;
		    FUNC7(szBuffer, szCopy, sizeof(szCopy));
		}
	    }
	    FUNC8(szBuffer);
	}
	
	FUNC5(&substPtr);
    }
    FUNC0(fp);
    return 0;
}