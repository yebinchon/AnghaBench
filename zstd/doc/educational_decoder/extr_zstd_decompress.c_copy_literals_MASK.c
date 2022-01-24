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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t const u32 ;
typedef  int /*<<< orphan*/  ostream_t ;
typedef  int /*<<< orphan*/  istream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,size_t const) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ * const,size_t const) ; 
 size_t const FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ * const,int /*<<< orphan*/  const* const,size_t const) ; 

__attribute__((used)) static u32 FUNC5(const size_t literal_length, istream_t *litstream,
                         ostream_t *const out) {
    // If the sequence asks for more literals than are left, the
    // sequence must be corrupted
    if (literal_length > FUNC3(litstream)) {
        FUNC0();
    }

    u8 *const write_ptr = FUNC2(out, literal_length);
    const u8 *const read_ptr =
         FUNC1(litstream, literal_length);
    // Copy literals to output
    FUNC4(write_ptr, read_ptr, literal_length);

    return literal_length;
}