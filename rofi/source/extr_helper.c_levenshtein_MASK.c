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
typedef  int glong ;
struct TYPE_2__ {int /*<<< orphan*/  case_sensitive; } ;

/* Variables and functions */
 int const G_MAXLONG ; 
 unsigned int FUNC0 (unsigned int,unsigned int,int) ; 
 unsigned int UINT_MAX ; 
 TYPE_1__ config ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char const*) ; 
 char* FUNC3 (char const*) ; 

unsigned int FUNC4 ( const char *needle, const glong needlelen, const char *haystack, const glong haystacklen )
{
    if ( needlelen == G_MAXLONG ) {
        // String to long, we cannot handle this.
        return UINT_MAX;
    }
    unsigned int column[needlelen + 1];
    for ( glong y = 0; y < needlelen; y++ ) {
        column[y] = y;
    }
    // Removed out of the loop, otherwise static code analyzers think it is unset.. silly but true.
    // old loop: for ( glong y = 0; y <= needlelen; y++)
    column[needlelen] = needlelen;
    for ( glong x = 1; x <= haystacklen; x++ ) {
        const char *needles = needle;
        column[0] = x;
        gunichar   haystackc = FUNC2 ( haystack );
        if ( !config.case_sensitive ) {
            haystackc = FUNC1 ( haystackc );
        }
        for ( glong y = 1, lastdiag = x - 1; y <= needlelen; y++ ) {
            gunichar needlec = FUNC2 ( needles );
            if ( !config.case_sensitive ) {
                needlec = FUNC1 ( needlec );
            }
            unsigned int olddiag = column[y];
            column[y] = FUNC0 ( column[y] + 1, column[y - 1] + 1, lastdiag + ( needlec == haystackc ? 0 : 1 ) );
            lastdiag  = olddiag;
            needles   = FUNC3 ( needles );
        }
        haystack = FUNC3 ( haystack );
    }
    return column[needlelen];
}