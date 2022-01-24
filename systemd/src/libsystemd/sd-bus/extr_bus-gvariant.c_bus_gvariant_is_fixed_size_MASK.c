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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 int FUNC3 (char const*,size_t*) ; 

int FUNC4(const char *signature) {
        const char *p;
        int r;

        FUNC0(signature);

        p = signature;
        while (*p != 0) {
                size_t n;

                r = FUNC3(p, &n);
                if (r < 0)
                        return r;

                switch (*p) {

                case SD_BUS_TYPE_STRING:
                case SD_BUS_TYPE_OBJECT_PATH:
                case SD_BUS_TYPE_SIGNATURE:
                case SD_BUS_TYPE_ARRAY:
                case SD_BUS_TYPE_VARIANT:
                        return 0;

                case SD_BUS_TYPE_BYTE:
                case SD_BUS_TYPE_BOOLEAN:
                case SD_BUS_TYPE_INT16:
                case SD_BUS_TYPE_UINT16:
                case SD_BUS_TYPE_INT32:
                case SD_BUS_TYPE_UINT32:
                case SD_BUS_TYPE_UNIX_FD:
                case SD_BUS_TYPE_INT64:
                case SD_BUS_TYPE_UINT64:
                case SD_BUS_TYPE_DOUBLE:
                        break;

                case SD_BUS_TYPE_STRUCT_BEGIN:
                case SD_BUS_TYPE_DICT_ENTRY_BEGIN: {
                        char t[n-1];

                        FUNC2(t, p + 1, n - 2);
                        t[n - 2] = 0;

                        r = FUNC4(t);
                        if (r <= 0)
                                return r;
                        break;
                }

                default:
                        FUNC1("Unknown signature type");
                }

                p += n;
        }

        return true;
}