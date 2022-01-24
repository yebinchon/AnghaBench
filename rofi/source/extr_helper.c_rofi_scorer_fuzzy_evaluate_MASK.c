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
typedef  scalar_t__ gunichar ;
typedef  size_t glong ;
typedef  char gchar ;
typedef  scalar_t__ gboolean ;
typedef  enum CharClass { ____Placeholder_CharClass } CharClass ;
struct TYPE_2__ {scalar_t__ case_sensitive; } ;

/* Variables and functions */
 scalar_t__ CONSECUTIVE_SCORE ; 
 scalar_t__ FALSE ; 
 size_t FUZZY_SCORER_MAX_LENGTH ; 
 scalar_t__ GAP_SCORE ; 
 size_t LEADING_GAP_SCORE ; 
 size_t FUNC0 (scalar_t__,int) ; 
 int MIN_SCORE ; 
 int NON_WORD ; 
 int PATTERN_NON_START_MULTIPLIER ; 
 int PATTERN_START_MULTIPLIER ; 
 scalar_t__ TRUE ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int* FUNC2 (size_t,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (char const*) ; 
 char* FUNC6 (char const*) ; 
 int FUNC7 (scalar_t__) ; 
 int FUNC8 (int,int) ; 

int FUNC9 ( const char *pattern, glong plen, const char *str, glong slen )
{
    if ( slen > FUZZY_SCORER_MAX_LENGTH ) {
        return -MIN_SCORE;
    }
    glong    pi, si;
    // whether we are aligning the first character of pattern
    gboolean pfirst = TRUE;
    // whether the start of a word in pattern
    gboolean pstart = TRUE;
    // score for each position
    int      *score = FUNC2 ( slen, sizeof ( int ) );
    // dp[i]: maximum value by aligning pattern[0..pi] to str[0..si]
    int      *dp = FUNC2 ( slen, sizeof ( int ) );
    // uleft: value of the upper left cell; ulefts: maximum value of uleft and cells on the left. The arbitrary initial
    // values suppress warnings.
    int            uleft = 0, ulefts = 0, left, lefts;
    const gchar    *pit = pattern, *sit;
    enum CharClass prev = NON_WORD;
    for ( si = 0, sit = str; si < slen; si++, sit = FUNC6 ( sit ) ) {
        enum CharClass cur = FUNC7 ( FUNC5 ( sit ) );
        score[si] = FUNC8 ( prev, cur );
        prev      = cur;
        dp[si]    = MIN_SCORE;
    }
    for ( pi = 0; pi < plen; pi++, pit = FUNC6 ( pit ) ) {
        gunichar pc = FUNC5 ( pit ), sc;
        if ( FUNC3 ( pc ) ) {
            pstart = TRUE;
            continue;
        }
        lefts = MIN_SCORE;
        for ( si = 0, sit = str; si < slen; si++, sit = FUNC6 ( sit ) ) {
            left  = dp[si];
            lefts = FUNC0 ( lefts + GAP_SCORE, left );
            sc    = FUNC5 ( sit );
            if ( config.case_sensitive
                 ? pc == sc
                 : FUNC4 ( pc ) == FUNC4 ( sc ) ) {
                int t = score[si] * ( pstart ? PATTERN_START_MULTIPLIER : PATTERN_NON_START_MULTIPLIER );
                dp[si] = pfirst
                         ? LEADING_GAP_SCORE * si + t
                         : FUNC0 ( uleft + CONSECUTIVE_SCORE, ulefts + t );
            }
            else {
                dp[si] = MIN_SCORE;
            }
            uleft  = left;
            ulefts = lefts;
        }
        pfirst = pstart = FALSE;
    }
    lefts = MIN_SCORE;
    for ( si = 0; si < slen; si++ ) {
        lefts = FUNC0 ( lefts + GAP_SCORE, dp[si] );
    }
    FUNC1 ( score );
    FUNC1 ( dp );
    return -lefts;
}