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
 int FUNC0 (int,int) ; 
 int EINVAL ; 
#define  SD_BUS_TYPE_ARRAY 144 
#define  SD_BUS_TYPE_BOOLEAN 143 
#define  SD_BUS_TYPE_BYTE 142 
#define  SD_BUS_TYPE_DICT_ENTRY_BEGIN 141 
#define  SD_BUS_TYPE_DOUBLE 140 
#define  SD_BUS_TYPE_INT16 139 
#define  SD_BUS_TYPE_INT32 138 
#define  SD_BUS_TYPE_INT64 137 
#define  SD_BUS_TYPE_OBJECT_PATH 136 
#define  SD_BUS_TYPE_SIGNATURE 135 
#define  SD_BUS_TYPE_STRING 134 
#define  SD_BUS_TYPE_STRUCT_BEGIN 133 
#define  SD_BUS_TYPE_UINT16 132 
#define  SD_BUS_TYPE_UINT32 131 
#define  SD_BUS_TYPE_UINT64 130 
#define  SD_BUS_TYPE_UNIX_FD 129 
#define  SD_BUS_TYPE_VARIANT 128 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 int FUNC4 (char const*,size_t*) ; 

int FUNC5(const char *signature) {
        const char *p;
        int sum = 0, r;

        /* For fixed size structs. Fails for variable size structs. */

        p = signature;
        while (*p != 0) {
                size_t n;

                r = FUNC4(p, &n);
                if (r < 0)
                        return r;
                else {
                        char t[n+1];

                        FUNC3(t, p, n);
                        t[n] = 0;

                        r = FUNC2(t);
                        if (r < 0)
                                return r;

                        sum = FUNC0(sum, r);
                }

                switch (*p) {

                case SD_BUS_TYPE_BOOLEAN:
                case SD_BUS_TYPE_BYTE:
                        sum += 1;
                        break;

                case SD_BUS_TYPE_INT16:
                case SD_BUS_TYPE_UINT16:
                        sum += 2;
                        break;

                case SD_BUS_TYPE_INT32:
                case SD_BUS_TYPE_UINT32:
                case SD_BUS_TYPE_UNIX_FD:
                        sum += 4;
                        break;

                case SD_BUS_TYPE_INT64:
                case SD_BUS_TYPE_UINT64:
                case SD_BUS_TYPE_DOUBLE:
                        sum += 8;
                        break;

                case SD_BUS_TYPE_STRUCT_BEGIN:
                case SD_BUS_TYPE_DICT_ENTRY_BEGIN: {
                        if (n == 2) {
                                /* unary type () has fixed size of 1 */
                                r = 1;
                        } else {
                                char t[n-1];

                                FUNC3(t, p + 1, n - 2);
                                t[n - 2] = 0;

                                r = FUNC5(t);
                                if (r < 0)
                                        return r;
                        }

                        sum += r;
                        break;
                }

                case SD_BUS_TYPE_STRING:
                case SD_BUS_TYPE_OBJECT_PATH:
                case SD_BUS_TYPE_SIGNATURE:
                case SD_BUS_TYPE_ARRAY:
                case SD_BUS_TYPE_VARIANT:
                        return -EINVAL;

                default:
                        FUNC1("Unknown signature type");
                }

                p += n;
        }

        r = FUNC2(signature);
        if (r < 0)
                return r;

        return FUNC0(sum, r);
}