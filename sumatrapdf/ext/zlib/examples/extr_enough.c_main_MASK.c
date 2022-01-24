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
struct tab {int dummy; } ;
typedef  int code_t ;
typedef  scalar_t__ big_t ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 void* FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * code ; 
 scalar_t__ FUNC3 (int,int,int) ; 
 int /*<<< orphan*/ * done ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int max ; 
 int /*<<< orphan*/ * num ; 
 int /*<<< orphan*/  FUNC7 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int root ; 
 size_t size ; 
 int /*<<< orphan*/  stderr ; 

int FUNC9(int argc, char **argv)
{
    int syms;           /* total number of symbols to code */
    int n;              /* number of symbols to code for this run */
    big_t got;          /* return value of count() */
    big_t sum;          /* accumulated number of codes over n */
    code_t word;        /* for counting bits in code_t */

    /* set up globals for cleanup() */
    code = NULL;
    num = NULL;
    done = NULL;

    /* get arguments -- default to the deflate literal/length code */
    syms = 286;
    root = 9;
    max = 15;
    if (argc > 1) {
        syms = FUNC0(argv[1]);
        if (argc > 2) {
            root = FUNC0(argv[2]);
            if (argc > 3)
                max = FUNC0(argv[3]);
        }
    }
    if (argc > 4 || syms < 2 || root < 1 || max < 1) {
        FUNC6("invalid arguments, need: [sym >= 2 [root >= 1 [max >= 1]]]\n",
              stderr);
        return 1;
    }

    /* if not restricting the code length, the longest is syms - 1 */
    if (max > syms - 1)
        max = syms - 1;

    /* determine the number of bits in a code_t */
    for (n = 0, word = 1; word; n++, word <<= 1)
        ;

    /* make sure that the calculation of most will not overflow */
    if (max > n || (code_t)(syms - 2) >= (((code_t)0 - 1) >> (max - 1))) {
        FUNC6("abort: code length too long for internal types\n", stderr);
        return 1;
    }

    /* reject impossible code requests */
    if ((code_t)(syms - 1) > ((code_t)1 << max) - 1) {
        FUNC5(stderr, "%d symbols cannot be coded in %d bits\n",
                syms, max);
        return 1;
    }

    /* allocate code vector */
    code = FUNC1(max + 1, sizeof(int));
    if (code == NULL) {
        FUNC6("abort: unable to allocate enough memory\n", stderr);
        return 1;
    }

    /* determine size of saved results array, checking for overflows,
       allocate and clear the array (set all to zero with calloc()) */
    if (syms == 2)              /* iff max == 1 */
        num = NULL;             /* won't be saving any results */
    else {
        size = syms >> 1;
        if (size > ((size_t)0 - 1) / (n = (syms - 1) >> 1) ||
                (size *= n, size > ((size_t)0 - 1) / (n = max - 1)) ||
                (size *= n, size > ((size_t)0 - 1) / sizeof(big_t)) ||
                (num = FUNC1(size, sizeof(big_t))) == NULL) {
            FUNC6("abort: unable to allocate enough memory\n", stderr);
            FUNC2();
            return 1;
        }
    }

    /* count possible codes for all numbers of symbols, add up counts */
    sum = 0;
    for (n = 2; n <= syms; n++) {
        got = FUNC3(n, 1, 2);
        sum += got;
        if (got == (big_t)0 - 1 || sum < got) {     /* overflow */
            FUNC6("abort: can't count that high!\n", stderr);
            FUNC2();
            return 1;
        }
        FUNC7("%llu %d-codes\n", got, n);
    }
    FUNC7("%llu total codes for 2 to %d symbols", sum, syms);
    if (max < syms - 1)
        FUNC7(" (%d-bit length limit)\n", max);
    else
        FUNC8(" (no length limit)");

    /* allocate and clear done array for beenhere() */
    if (syms == 2)
        done = NULL;
    else if (size > ((size_t)0 - 1) / sizeof(struct tab) ||
             (done = FUNC1(size, sizeof(struct tab))) == NULL) {
        FUNC6("abort: unable to allocate enough memory\n", stderr);
        FUNC2();
        return 1;
    }

    /* find and show maximum inflate table usage */
    if (root > max)                 /* reduce root to max length */
        root = max;
    if ((code_t)syms < ((code_t)1 << (root + 1)))
        FUNC4(syms);
    else
        FUNC8("cannot handle minimum code lengths > root");

    /* done */
    FUNC2();
    return 0;
}