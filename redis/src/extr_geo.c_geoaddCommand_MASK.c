#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
struct TYPE_7__ {int argc; int /*<<< orphan*/ ** argv; } ;
typedef  TYPE_1__ client ;
typedef  int /*<<< orphan*/  GeoHashFix52Bits ;
typedef  int /*<<< orphan*/  GeoHashBits ;

/* Variables and functions */
 scalar_t__ C_ERR ; 
 int /*<<< orphan*/  GEO_STEP_MAX ; 
 int /*<<< orphan*/  OBJ_STRING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ **,double*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (double,double,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/ ** FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **) ; 

void FUNC13(client *c) {
    /* Check arguments number for sanity. */
    if ((c->argc - 2) % 3 != 0) {
        /* Need an odd number of arguments if we got this far... */
        FUNC0(c, "syntax error. Try GEOADD key [x1] [y1] [name1] "
                         "[x2] [y2] [name2] ... ");
        return;
    }

    int elements = (c->argc - 2) / 3;
    int argc = 2+elements*2; /* ZADD key score ele ... */
    robj **argv = FUNC11(argc*sizeof(robj*));
    argv[0] = FUNC2("zadd",4);
    argv[1] = c->argv[1]; /* key */
    FUNC7(argv[1]);

    /* Create the argument vector to call ZADD in order to add all
     * the score,value pairs to the requested zset, where score is actually
     * an encoded version of lat,long. */
    int i;
    for (i = 0; i < elements; i++) {
        double xy[2];

        if (FUNC4(c, (c->argv+2)+(i*3),xy) == C_ERR) {
            for (i = 0; i < argc; i++)
                if (argv[i]) FUNC3(argv[i]);
            FUNC12(argv);
            return;
        }

        /* Turn the coordinates into the score of the element. */
        GeoHashBits hash;
        FUNC6(xy[0], xy[1], GEO_STEP_MAX, &hash);
        GeoHashFix52Bits bits = FUNC5(hash);
        robj *score = FUNC1(OBJ_STRING, FUNC9(bits));
        robj *val = c->argv[2 + i * 3 + 2];
        argv[2+i*2] = score;
        argv[3+i*2] = val;
        FUNC7(val);
    }

    /* Finally call ZADD that will do the work for us. */
    FUNC8(c,argc,argv);
    FUNC10(c);
}