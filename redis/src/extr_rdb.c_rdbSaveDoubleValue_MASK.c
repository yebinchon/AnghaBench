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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double) ; 
 scalar_t__ FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,long long) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,double) ; 
 unsigned char FUNC5 (char*) ; 

int FUNC6(rio *rdb, double val) {
    unsigned char buf[128];
    int len;

    if (FUNC1(val)) {
        buf[0] = 253;
        len = 1;
    } else if (!FUNC0(val)) {
        len = 1;
        buf[0] = (val < 0) ? 255 : 254;
    } else {
#if (DBL_MANT_DIG >= 52) && (LLONG_MAX == 0x7fffffffffffffffLL)
        /* Check if the float is in a safe range to be casted into a
         * long long. We are assuming that long long is 64 bit here.
         * Also we are assuming that there are no implementations around where
         * double has precision < 52 bit.
         *
         * Under this assumptions we test if a double is inside an interval
         * where casting to long long is safe. Then using two castings we
         * make sure the decimal part is zero. If all this is true we use
         * integer printing function that is much faster. */
        double min = -4503599627370495; /* (2^52)-1 */
        double max = 4503599627370496; /* -(2^52) */
        if (val > min && val < max && val == ((double)((long long)val)))
            ll2string((char*)buf+1,sizeof(buf)-1,(long long)val);
        else
#endif
            FUNC4((char*)buf+1,sizeof(buf)-1,"%.17g",val);
        buf[0] = FUNC5((char*)buf+1);
        len = buf[0]+1;
    }
    return FUNC3(rdb,buf,len);
}