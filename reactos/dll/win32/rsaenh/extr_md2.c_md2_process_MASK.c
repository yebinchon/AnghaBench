#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int curlen; scalar_t__ buf; } ;
typedef  TYPE_1__ md2_state ;

/* Variables and functions */
 int CRYPT_INVALID_ARG ; 
 int CRYPT_OK ; 
 unsigned long FUNC0 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned char const*,size_t) ; 

int FUNC4(md2_state *md2, const unsigned char *buf, unsigned long len)
{
    unsigned long n;
    
    if (md2->curlen > sizeof(md2->buf)) {                            
       return CRYPT_INVALID_ARG;                                                           
    }                                                                                       
    while (len > 0) {
        n = FUNC0(len, (16 - md2->curlen));
        FUNC3(md2->buf + md2->curlen, buf, (size_t)n);
        md2->curlen += n;
        buf         += n;
        len         -= n;

        /* is 16 bytes full? */
        if (md2->curlen == 16) {
            FUNC1(md2);
            FUNC2(md2);
            md2->curlen = 0;
        }
    }
    return CRYPT_OK;
}