#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct ar_archive_rar_uncomp_v3 {int lastlength; int lastoffset; int* oldoffset; int numlowoffsetrepeats; int lastlowoffset; int /*<<< orphan*/  lowoffsetcode; int /*<<< orphan*/  offsetcode; int /*<<< orphan*/  lengthcode; int /*<<< orphan*/  maincode; scalar_t__ is_ppmd_block; } ;
typedef  int /*<<< orphan*/  offsetbits ;
typedef  int /*<<< orphan*/  offsetbases ;
typedef  int /*<<< orphan*/  lengthbits ;
typedef  int /*<<< orphan*/  lengthbases ;
typedef  scalar_t__ int64_t ;
typedef  int int32_t ;
struct TYPE_12__ {struct ar_archive_rar_uncomp_v3 v3; } ;
struct TYPE_13__ {int version; int start_new_table; int /*<<< orphan*/  lzss; TYPE_1__ state; } ;
struct TYPE_14__ {TYPE_2__ uncomp; } ;
typedef  TYPE_3__ ar_archive_rar ;
typedef  int /*<<< orphan*/  LZSS ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*,int const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rar_decode_byte ; 
 scalar_t__ FUNC5 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC9 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

int64_t FUNC11(ar_archive_rar *rar, int64_t end)
{
    static const uint8_t lengthbases[] =
        {   0,   1,   2,   3,   4,   5,   6,
            7,   8,  10,  12,  14,  16,  20,
           24,  28,  32,  40,  48,  56,  64,
           80,  96, 112, 128, 160, 192, 224 };
    static const uint8_t lengthbits[] =
        { 0, 0, 0, 0, 0, 0, 0,
          0, 1, 1, 1, 1, 2, 2,
          2, 2, 3, 3, 3, 3, 4,
          4, 4, 4, 5, 5, 5, 5 };
    static const int32_t offsetbases[] =
        {       0,       1,       2,       3,       4,       6,
                8,      12,      16,      24,      32,      48,
               64,      96,     128,     192,     256,     384,
              512,     768,    1024,    1536,    2048,    3072,
             4096,    6144,    8192,   12288,   16384,   24576,
            32768,   49152,   65536,   98304,  131072,  196608,
           262144,  327680,  393216,  458752,  524288,  589824,
           655360,  720896,  786432,  851968,  917504,  983040,
          1048576, 1310720, 1572864, 1835008, 2097152, 2359296,
          2621440, 2883584, 3145728, 3407872, 3670016, 3932160 };
    static const uint8_t offsetbits[] =
        {  0,  0,  0,  0,  1,  1,  2,  2,  3,  3,  4,  4,
           5,  5,  6,  6,  7,  7,  8,  8,  9,  9, 10, 10,
          11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16,
          16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16,
          18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18 };
    static const uint8_t shortbases[] =
        { 0, 4, 8, 16, 32, 64, 128, 192 };
    static const uint8_t shortbits[] =
        { 2, 2, 3, 4, 5, 6, 6, 6 };

    struct ar_archive_rar_uncomp_v3 *uncomp_v3 = &rar->uncomp.state.v3;
    LZSS *lzss = &rar->uncomp.lzss;
    int symbol, offs, len, i;

    if (rar->uncomp.version == 2)
        return FUNC5(rar, end);

    for (;;) {
        if (FUNC4(lzss) >= end)
            return end;

        if (uncomp_v3->is_ppmd_block) {
            if (!FUNC6(rar, &end))
                return -1;
            if (rar->uncomp.start_new_table)
                return FUNC4(lzss);
            continue;
        }

        symbol = FUNC9(rar, &uncomp_v3->maincode);
        if (symbol < 0)
            return -1;
        if (symbol < 256) {
            FUNC2(lzss, (uint8_t)symbol);
            continue;
        }
        if (symbol == 256) {
            if (!FUNC1(rar, 1))
                return -1;
            if (!FUNC0(rar, 1)) {
                if (!FUNC1(rar, 1))
                    return -1;
                rar->uncomp.start_new_table = FUNC0(rar, 1) != 0;
                return FUNC4(lzss);
            }
            if (!FUNC7(rar))
                return -1;
            continue;
        }
        if (symbol == 257) {
            if (!FUNC8(rar, rar_decode_byte, &end))
                return -1;
            continue;
        }
        if (symbol == 258) {
            if (uncomp_v3->lastlength == 0)
                continue;
            offs = uncomp_v3->lastoffset;
            len = uncomp_v3->lastlength;
        }
        else if (symbol <= 262) {
            int idx = symbol - 259;
            int lensymbol = FUNC9(rar, &uncomp_v3->lengthcode);
            offs = uncomp_v3->oldoffset[idx];
            if (lensymbol < 0 || lensymbol > (int)(sizeof(lengthbases) / sizeof(lengthbases[0])) || lensymbol > (int)(sizeof(lengthbits) / sizeof(lengthbits[0]))) {
                FUNC10("Invalid data in bitstream");
                return -1;
            }
            len = lengthbases[lensymbol] + 2;
            if (lengthbits[lensymbol] > 0) {
                if (!FUNC1(rar, lengthbits[lensymbol]))
                    return -1;
                len += (uint8_t)FUNC0(rar, lengthbits[lensymbol]);
            }
            for (i = idx; i > 0; i--)
                uncomp_v3->oldoffset[i] = uncomp_v3->oldoffset[i - 1];
            uncomp_v3->oldoffset[0] = offs;
        }
        else if (symbol <= 270) {
            int idx = symbol - 263;
            offs = shortbases[idx] + 1;
            if (shortbits[idx] > 0) {
                if (!FUNC1(rar, shortbits[idx]))
                    return -1;
                offs += (uint8_t)FUNC0(rar, shortbits[idx]);
            }
            len = 2;
            for (i = 3; i > 0; i--)
                uncomp_v3->oldoffset[i] = uncomp_v3->oldoffset[i - 1];
            uncomp_v3->oldoffset[0] = offs;
        }
        else {
            int idx = symbol - 271;
            int offssymbol;
            if (idx > (int)(sizeof(lengthbases) / sizeof(lengthbases[0])) || idx > (int)(sizeof(lengthbits) / sizeof(lengthbits[0]))) {
                FUNC10("Invalid data in bitstream");
                return -1;
            }
            len = lengthbases[idx] + 3;
            if (lengthbits[idx] > 0) {
                if (!FUNC1(rar, lengthbits[idx]))
                    return -1;
                len += (uint8_t)FUNC0(rar, lengthbits[idx]);
            }
            offssymbol = FUNC9(rar, &uncomp_v3->offsetcode);
            if (offssymbol < 0 || offssymbol > (int)(sizeof(offsetbases) / sizeof(offsetbases[0])) || offssymbol > (int)(sizeof(offsetbits) / sizeof(offsetbits[0]))) {
                FUNC10("Invalid data in bitstream");
                return -1;
            }
            offs = offsetbases[offssymbol] + 1;
            if (offsetbits[offssymbol] > 0) {
                if (offssymbol > 9) {
                    if (offsetbits[offssymbol] > 4) {
                        if (!FUNC1(rar, offsetbits[offssymbol] - 4))
                            return -1;
                        offs += (int)FUNC0(rar, offsetbits[offssymbol] - 4) << 4;
                    }
                    if (uncomp_v3->numlowoffsetrepeats > 0) {
                        uncomp_v3->numlowoffsetrepeats--;
                        offs += uncomp_v3->lastlowoffset;
                    }
                    else {
                        int lowoffsetsymbol = FUNC9(rar, &uncomp_v3->lowoffsetcode);
                        if (lowoffsetsymbol < 0)
                            return -1;
                        if (lowoffsetsymbol == 16) {
                            uncomp_v3->numlowoffsetrepeats = 15;
                            offs += uncomp_v3->lastlowoffset;
                        }
                        else {
                            offs += lowoffsetsymbol;
                            uncomp_v3->lastlowoffset = lowoffsetsymbol;
                        }
                    }
                }
                else {
                    if (!FUNC1(rar, offsetbits[offssymbol]))
                        return -1;
                    offs += (int)FUNC0(rar, offsetbits[offssymbol]);
                }
            }

            if (offs >= 0x40000)
                len++;
            if (offs >= 0x2000)
                len++;

            for (i = 3; i > 0; i--)
                uncomp_v3->oldoffset[i] = uncomp_v3->oldoffset[i - 1];
            uncomp_v3->oldoffset[0] = offs;
        }

        uncomp_v3->lastoffset = offs;
        uncomp_v3->lastlength = len;

        FUNC3(lzss, offs, len);
    }
}