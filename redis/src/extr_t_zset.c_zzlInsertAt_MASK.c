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
typedef  scalar_t__ sds ;
typedef  int /*<<< orphan*/  scorebuf ;

/* Variables and functions */
 int /*<<< orphan*/  ZIPLIST_TAIL ; 
 int FUNC0 (char*,int,double) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned char* FUNC3 (unsigned char*,unsigned char*,unsigned char*,int) ; 
 unsigned char* FUNC4 (unsigned char*,unsigned char*) ; 
 unsigned char* FUNC5 (unsigned char*,unsigned char*,int,int /*<<< orphan*/ ) ; 

unsigned char *FUNC6(unsigned char *zl, unsigned char *eptr, sds ele, double score) {
    unsigned char *sptr;
    char scorebuf[128];
    int scorelen;
    size_t offset;

    scorelen = FUNC0(scorebuf,sizeof(scorebuf),score);
    if (eptr == NULL) {
        zl = FUNC5(zl,(unsigned char*)ele,FUNC1(ele),ZIPLIST_TAIL);
        zl = FUNC5(zl,(unsigned char*)scorebuf,scorelen,ZIPLIST_TAIL);
    } else {
        /* Keep offset relative to zl, as it might be re-allocated. */
        offset = eptr-zl;
        zl = FUNC3(zl,eptr,(unsigned char*)ele,FUNC1(ele));
        eptr = zl+offset;

        /* Insert score after the element. */
        FUNC2((sptr = FUNC4(zl,eptr)) != NULL);
        zl = FUNC3(zl,sptr,(unsigned char*)scorebuf,scorelen);
    }
    return zl;
}