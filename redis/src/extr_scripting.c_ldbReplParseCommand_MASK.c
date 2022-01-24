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
typedef  char* sds ;
struct TYPE_2__ {int /*<<< orphan*/  cbuf; } ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 TYPE_1__ ldb ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char**,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,int) ; 
 char* FUNC6 (char*,char) ; 
 char* FUNC7 (char*,char*) ; 
 char** FUNC8 (int) ; 

sds *FUNC9(int *argcp) {
    sds *argv = NULL;
    int argc = 0;
    if (FUNC4(ldb.cbuf) == 0) return NULL;

    /* Working on a copy is simpler in this case. We can modify it freely
     * for the sake of simpler parsing. */
    sds copy = FUNC1(ldb.cbuf);
    char *p = copy;

    /* This Redis protocol parser is a joke... just the simplest thing that
     * works in this context. It is also very forgiving regarding broken
     * protocol. */

    /* Seek and parse *<count>\r\n. */
    p = FUNC6(p,'*'); if (!p) goto protoerr;
    char *plen = p+1; /* Multi bulk len pointer. */
    p = FUNC7(p,"\r\n"); if (!p) goto protoerr;
    *p = '\0'; p += 2;
    *argcp = FUNC0(plen);
    if (*argcp <= 0 || *argcp > 1024) goto protoerr;

    /* Parse each argument. */
    argv = FUNC8(sizeof(sds)*(*argcp));
    argc = 0;
    while(argc < *argcp) {
        if (*p != '$') goto protoerr;
        plen = p+1; /* Bulk string len pointer. */
        p = FUNC7(p,"\r\n"); if (!p) goto protoerr;
        *p = '\0'; p += 2;
        int slen = FUNC0(plen); /* Length of this arg. */
        if (slen <= 0 || slen > 1024) goto protoerr;
        argv[argc++] = FUNC5(p,slen);
        p += slen; /* Skip the already parsed argument. */
        if (p[0] != '\r' || p[1] != '\n') goto protoerr;
        p += 2; /* Skip \r\n. */
    }
    FUNC2(copy);
    return argv;

protoerr:
    FUNC3(argv,argc);
    FUNC2(copy);
    return NULL;
}