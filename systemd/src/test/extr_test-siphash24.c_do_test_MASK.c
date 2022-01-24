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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
struct siphash {int v0; int v1; int v2; int v3; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,size_t,struct siphash*) ; 
 int FUNC3 (struct siphash*) ; 
 int /*<<< orphan*/  FUNC4 (struct siphash*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC5(const uint8_t *in, size_t len, const uint8_t *key) {
        struct siphash state = {};
        uint64_t out;
        unsigned i, j;

        out = FUNC1(in, len, key);
        FUNC0(out == 0xa129ca6149be45e5);

        /* verify the internal state as given in the above paper */
        FUNC4(&state, key);
        FUNC0(state.v0 == 0x7469686173716475);
        FUNC0(state.v1 == 0x6b617f6d656e6665);
        FUNC0(state.v2 == 0x6b7f62616d677361);
        FUNC0(state.v3 == 0x7b6b696e727e6c7b);
        FUNC2(in, len, &state);
        FUNC0(state.v0 == 0x4a017198de0a59e0);
        FUNC0(state.v1 == 0x0d52f6f62a4f59a4);
        FUNC0(state.v2 == 0x634cb3577b01fd3d);
        FUNC0(state.v3 == 0xa5224d6f55c7d9c8);
        out = FUNC3(&state);
        FUNC0(out == 0xa129ca6149be45e5);
        FUNC0(state.v0 == 0xf6bcd53893fecff1);
        FUNC0(state.v1 == 0x54b9964c7ea0d937);
        FUNC0(state.v2 == 0x1b38329c099bb55a);
        FUNC0(state.v3 == 0x1814bb89ad7be679);

        /* verify that decomposing the input in three chunks gives the
           same result */
        for (i = 0; i < len; i++) {
                for (j = i; j < len; j++) {
                        FUNC4(&state, key);
                        FUNC2(in, i, &state);
                        FUNC2(&in[i], j - i, &state);
                        FUNC2(&in[j], len - j, &state);
                        out = FUNC3(&state);
                        FUNC0(out == 0xa129ca6149be45e5);
                }
        }
}