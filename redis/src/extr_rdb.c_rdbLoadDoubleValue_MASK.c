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
typedef  int /*<<< orphan*/  rio ;

/* Variables and functions */
 double R_Nan ; 
 double R_NegInf ; 
 double R_PosInf ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,double*) ; 

int FUNC2(rio *rdb, double *val) {
    char buf[256];
    unsigned char len;

    if (FUNC0(rdb,&len,1) == 0) return -1;
    switch(len) {
    case 255: *val = R_NegInf; return 0;
    case 254: *val = R_PosInf; return 0;
    case 253: *val = R_Nan; return 0;
    default:
        if (FUNC0(rdb,buf,len) == 0) return -1;
        buf[len] = '\0';
        FUNC1(buf, "%lg", val);
        return 0;
    }
}