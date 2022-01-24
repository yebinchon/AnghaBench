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
typedef  char uint8_t ;
typedef  int uint64_t ;
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  sd_bus_message ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int ENOMEM ; 
 size_t UINT32_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,int,int) ; 
 size_t FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(
                sd_bus_message *m,
                uint64_t h,
                char type,
                const char *s,
                const char **ret) {

        size_t l;
        uint8_t *p;

        FUNC1(m);

        /* dbus1 only allows 8bit header field ids */
        if (h > 0xFF)
                return -EINVAL;

        /* dbus1 doesn't allow strings over 32bit, let's enforce this
         * globally, to not risk convertability */
        l = FUNC4(s);
        if (l > UINT32_MAX)
                return -EINVAL;

        /* Signature "(yv)" where the variant contains "s" */

        if (FUNC0(m)) {

                /* (field id 64bit, ((string + NUL) + NUL + signature string 's') */
                p = FUNC3(m, 8, 8 + l + 1 + 1 + 1, true);
                if (!p)
                        return -ENOMEM;

                *((uint64_t*) p) = h;
                FUNC2(p+8, s, l);
                p[8+l] = 0;
                p[8+l+1] = 0;
                p[8+l+2] = type;

                if (ret)
                        *ret = (char*) p + 8;

        } else {
                /* (field id byte + (signature length + signature 's' + NUL) + (string length + string + NUL)) */
                p = FUNC3(m, 8, 4 + 4 + l + 1, false);
                if (!p)
                        return -ENOMEM;

                p[0] = (uint8_t) h;
                p[1] = 1;
                p[2] = type;
                p[3] = 0;

                ((uint32_t*) p)[1] = l;
                FUNC2(p + 8, s, l + 1);

                if (ret)
                        *ret = (char*) p + 8;
        }

        return 0;
}