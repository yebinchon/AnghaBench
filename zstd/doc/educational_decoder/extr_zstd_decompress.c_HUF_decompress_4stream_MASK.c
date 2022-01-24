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
typedef  int /*<<< orphan*/  ostream_t ;
typedef  int /*<<< orphan*/  istream_t ;
typedef  int /*<<< orphan*/  HUF_dtable ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const* const,int /*<<< orphan*/ * const,int /*<<< orphan*/ *) ; 
 size_t const FUNC1 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const,size_t const) ; 
 size_t FUNC3 (int /*<<< orphan*/ * const,int) ; 

__attribute__((used)) static size_t FUNC4(const HUF_dtable *const dtable,
                                     ostream_t *const out, istream_t *const in) {
    // "Compressed size is provided explicitly : in the 4-streams variant,
    // bitstreams are preceded by 3 unsigned little-endian 16-bits values. Each
    // value represents the compressed size of one stream, in order. The last
    // stream size is deducted from total compressed size and from previously
    // decoded stream sizes"
    const size_t csize1 = FUNC3(in, 16);
    const size_t csize2 = FUNC3(in, 16);
    const size_t csize3 = FUNC3(in, 16);

    istream_t in1 = FUNC2(in, csize1);
    istream_t in2 = FUNC2(in, csize2);
    istream_t in3 = FUNC2(in, csize3);
    istream_t in4 = FUNC2(in, FUNC1(in));

    size_t total_output = 0;
    // Decode each stream independently for simplicity
    // If we wanted to we could decode all 4 at the same time for speed,
    // utilizing more execution units
    total_output += FUNC0(dtable, out, &in1);
    total_output += FUNC0(dtable, out, &in2);
    total_output += FUNC0(dtable, out, &in3);
    total_output += FUNC0(dtable, out, &in4);

    return total_output;
}