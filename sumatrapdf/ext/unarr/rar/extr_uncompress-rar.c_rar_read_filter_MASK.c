#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
typedef  size_t int64_t ;
struct TYPE_10__ {size_t filterstart; } ;
struct TYPE_11__ {TYPE_1__ filters; } ;
struct TYPE_12__ {TYPE_2__ v3; } ;
struct TYPE_13__ {TYPE_3__ state; } ;
struct TYPE_14__ {TYPE_4__ uncomp; } ;
typedef  TYPE_5__ ar_archive_rar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static bool FUNC4(ar_archive_rar *rar, bool (* decode_byte)(ar_archive_rar *rar, uint8_t *byte), int64_t *end)
{
    uint8_t flags, val, *code;
    uint16_t length, i;

    if (!decode_byte(rar, &flags))
        return false;
    length = (flags & 0x07) + 1;
    if (length == 7) {
        if (!decode_byte(rar, &val))
            return false;
        length = val + 7;
    }
    else if (length == 8) {
        if (!decode_byte(rar, &val))
            return false;
        length = val << 8;
        if (!decode_byte(rar, &val))
            return false;
        length |= val;
    }

    code = FUNC1(length);
    if (!code) {
        FUNC3("OOM during decompression");
        return false;
    }
    for (i = 0; i < length; i++) {
        if (!decode_byte(rar, &code[i])) {
            FUNC0(code);
            return false;
        }
    }
    if (!FUNC2(rar, code, length, flags)) {
        FUNC0(code);
        return false;
    }
    FUNC0(code);

    if (rar->uncomp.state.v3.filters.filterstart < (size_t)*end)
        *end = rar->uncomp.state.v3.filters.filterstart;

    return true;
}