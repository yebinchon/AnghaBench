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
typedef  int u32 ;
typedef  int /*<<< orphan*/  ostream_t ;
typedef  int /*<<< orphan*/  istream_t ;
typedef  int /*<<< orphan*/  dictionary_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const,int /*<<< orphan*/ * const,int /*<<< orphan*/  const* const) ; 

__attribute__((used)) static void FUNC3(ostream_t *const out, istream_t *const in,
                         const dictionary_t *const dict) {
    const u32 magic_number = (u32)FUNC1(in, 32);
    // Zstandard frame
    //
    // "Magic_Number
    //
    // 4 Bytes, little-endian format. Value : 0xFD2FB528"
    if (magic_number == 0xFD2FB528U) {
        // ZSTD frame
        FUNC2(out, in, dict);

        return;
    }

    // not a real frame or a skippable frame
    FUNC0("Tried to decode non-ZSTD frame");
}