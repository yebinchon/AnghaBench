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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned char* FUNC1 (unsigned char*,unsigned char*) ; 

void FUNC2(unsigned char *zl, unsigned char **eptr, unsigned char **sptr) {
    unsigned char *_eptr, *_sptr;
    FUNC0(*eptr != NULL && *sptr != NULL);

    _sptr = FUNC1(zl,*eptr);
    if (_sptr != NULL) {
        _eptr = FUNC1(zl,_sptr);
        FUNC0(_eptr != NULL);
    } else {
        /* No previous entry. */
        _eptr = NULL;
    }

    *eptr = _eptr;
    *sptr = _sptr;
}