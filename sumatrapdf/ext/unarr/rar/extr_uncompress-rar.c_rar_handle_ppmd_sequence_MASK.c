#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ar_archive_rar_uncomp_v3 {scalar_t__ ppmd_escape; } ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_7__ {struct ar_archive_rar_uncomp_v3 v3; } ;
struct TYPE_8__ {int start_new_table; int /*<<< orphan*/  lzss; TYPE_1__ state; } ;
struct TYPE_9__ {TYPE_2__ uncomp; } ;
typedef  TYPE_3__ ar_archive_rar ;
typedef  int /*<<< orphan*/  LZSS ;
typedef  scalar_t__ Byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rar_decode_ppmd7_byte ; 
 int /*<<< orphan*/  FUNC2 (struct ar_archive_rar_uncomp_v3*,scalar_t__*) ; 
 int FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC5(ar_archive_rar *rar, int64_t *end)
{
    struct ar_archive_rar_uncomp_v3 *uncomp_v3 = &rar->uncomp.state.v3;
    LZSS *lzss = &rar->uncomp.lzss;
    Byte sym, code, length;
    int lzss_offset;

    if (!FUNC2(uncomp_v3, &sym))
        return false;
    if (sym != uncomp_v3->ppmd_escape) {
        FUNC0(lzss, sym);
        return true;
    }

    if (!FUNC2(uncomp_v3, &code))
        return false;
    switch (code) {
    case 0:
        return FUNC3(rar);

    case 2:
        rar->uncomp.start_new_table = true;
        return true;

    case 3:
        return FUNC4(rar, rar_decode_ppmd7_byte, end);

    case 4:
        if (!FUNC2(uncomp_v3, &code))
            return false;
        lzss_offset = code << 16;
        if (!FUNC2(uncomp_v3, &code))
            return false;
        lzss_offset |= code << 8;
        if (!FUNC2(uncomp_v3, &code))
            return false;
        lzss_offset |= code;
        if (!FUNC2(uncomp_v3, &length))
            return false;
        FUNC1(lzss, lzss_offset + 2, length + 32);
        return true;

    case 5:
        if (!FUNC2(uncomp_v3, &length))
            return false;
        FUNC1(lzss, 1, length + 4);
        return true;

    default:
        FUNC0(lzss, sym);
        return true;
    }
}