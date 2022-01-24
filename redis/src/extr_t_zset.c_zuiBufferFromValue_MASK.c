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
struct TYPE_3__ {unsigned char* estr; unsigned char* _buf; int /*<<< orphan*/  ell; int /*<<< orphan*/  elen; int /*<<< orphan*/ * ele; } ;
typedef  TYPE_1__ zsetopval ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(zsetopval *val) {
    if (val->estr == NULL) {
        if (val->ele != NULL) {
            val->elen = FUNC1(val->ele);
            val->estr = (unsigned char*)val->ele;
        } else {
            val->elen = FUNC0((char*)val->_buf,sizeof(val->_buf),val->ell);
            val->estr = val->_buf;
        }
    }
    return 1;
}