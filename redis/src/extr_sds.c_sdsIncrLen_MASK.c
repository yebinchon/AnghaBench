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
typedef  unsigned int uint64_t ;
typedef  size_t ssize_t ;
typedef  unsigned char* sds ;
struct TYPE_2__ {size_t alloc; size_t len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned char*) ; 
#define  SDS_TYPE_16 132 
#define  SDS_TYPE_32 131 
#define  SDS_TYPE_5 130 
 unsigned char FUNC1 (unsigned char) ; 
#define  SDS_TYPE_64 129 
#define  SDS_TYPE_8 128 
 int const SDS_TYPE_BITS ; 
 unsigned char SDS_TYPE_MASK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* sh ; 

void FUNC3(sds s, ssize_t incr) {
    unsigned char flags = s[-1];
    size_t len;
    switch(flags&SDS_TYPE_MASK) {
        case SDS_TYPE_5: {
            unsigned char *fp = ((unsigned char*)s)-1;
            unsigned char oldlen = FUNC1(flags);
            FUNC2((incr > 0 && oldlen+incr < 32) || (incr < 0 && oldlen >= (unsigned int)(-incr)));
            *fp = SDS_TYPE_5 | ((oldlen+incr) << SDS_TYPE_BITS);
            len = oldlen+incr;
            break;
        }
        case SDS_TYPE_8: {
            FUNC0(8,s);
            FUNC2((incr >= 0 && sh->alloc-sh->len >= incr) || (incr < 0 && sh->len >= (unsigned int)(-incr)));
            len = (sh->len += incr);
            break;
        }
        case SDS_TYPE_16: {
            FUNC0(16,s);
            FUNC2((incr >= 0 && sh->alloc-sh->len >= incr) || (incr < 0 && sh->len >= (unsigned int)(-incr)));
            len = (sh->len += incr);
            break;
        }
        case SDS_TYPE_32: {
            FUNC0(32,s);
            FUNC2((incr >= 0 && sh->alloc-sh->len >= (unsigned int)incr) || (incr < 0 && sh->len >= (unsigned int)(-incr)));
            len = (sh->len += incr);
            break;
        }
        case SDS_TYPE_64: {
            FUNC0(64,s);
            FUNC2((incr >= 0 && sh->alloc-sh->len >= (uint64_t)incr) || (incr < 0 && sh->len >= (uint64_t)(-incr)));
            len = (sh->len += incr);
            break;
        }
        default: len = 0; /* Just to avoid compilation warnings. */
    }
    s[len] = '\0';
}