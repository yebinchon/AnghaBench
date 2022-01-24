#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int len; int headersize; int /*<<< orphan*/  encoding; } ;
typedef  TYPE_1__ zlentry ;

/* Variables and functions */
 unsigned char ZIP_END ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned char*,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,TYPE_1__*) ; 
 long long FUNC3 (unsigned char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned char*,unsigned int,long long*,unsigned char*) ; 

unsigned int FUNC5(unsigned char *p, unsigned char *sstr, unsigned int slen) {
    zlentry entry;
    unsigned char sencoding;
    long long zval, sval;
    if (p[0] == ZIP_END) return 0;

    FUNC2(p, &entry);
    if (FUNC0(entry.encoding)) {
        /* Raw compare */
        if (entry.len == slen) {
            return FUNC1(p+entry.headersize,sstr,slen) == 0;
        } else {
            return 0;
        }
    } else {
        /* Try to compare encoded values. Don't compare encoding because
         * different implementations may encoded integers differently. */
        if (FUNC4(sstr,slen,&sval,&sencoding)) {
          zval = FUNC3(p+entry.headersize,entry.encoding);
          return zval == sval;
        }
    }
    return 0;
}