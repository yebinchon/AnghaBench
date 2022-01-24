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
 int /*<<< orphan*/  FUNC1 (unsigned char*,TYPE_1__*) ; 
 long long FUNC2 (unsigned char*,int /*<<< orphan*/ ) ; 

unsigned int FUNC3(unsigned char *p, unsigned char **sstr, unsigned int *slen, long long *sval) {
    zlentry entry;
    if (p == NULL || p[0] == ZIP_END) return 0;
    if (sstr) *sstr = NULL;

    FUNC1(p, &entry);
    if (FUNC0(entry.encoding)) {
        if (sstr) {
            *slen = entry.len;
            *sstr = p+entry.headersize;
        }
    } else {
        if (sval) {
            *sval = FUNC2(p+entry.headersize,entry.encoding);
        }
    }
    return 1;
}