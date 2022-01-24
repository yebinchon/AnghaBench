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
typedef  int /*<<< orphan*/  uint64_t ;
struct hllhdr {scalar_t__ encoding; int /*<<< orphan*/  registers; } ;
typedef  int /*<<< orphan*/  sds ;

/* Variables and functions */
 double HLL_ALPHA_INF ; 
 scalar_t__ HLL_DENSE ; 
 scalar_t__ HLL_HDR_SIZE ; 
 int HLL_Q ; 
 scalar_t__ HLL_RAW ; 
 double HLL_REGISTERS ; 
 scalar_t__ HLL_SPARSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 double FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int*,int*) ; 
 double FUNC4 (double) ; 
 double FUNC5 (double) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

uint64_t FUNC8(struct hllhdr *hdr, int *invalid) {
    double m = HLL_REGISTERS;
    double E;
    int j;
    /* Note that reghisto size could be just HLL_Q+2, becuase HLL_Q+1 is
     * the maximum frequency of the "000...1" sequence the hash function is
     * able to return. However it is slow to check for sanity of the
     * input: instead we history array at a safe size: overflows will
     * just write data to wrong, but correctly allocated, places. */
    int reghisto[64] = {0};

    /* Compute register histogram */
    if (hdr->encoding == HLL_DENSE) {
        FUNC0(hdr->registers,reghisto);
    } else if (hdr->encoding == HLL_SPARSE) {
        FUNC3(hdr->registers,
                         FUNC6((sds)hdr)-HLL_HDR_SIZE,invalid,reghisto);
    } else if (hdr->encoding == HLL_RAW) {
        FUNC1(hdr->registers,reghisto);
    } else {
        FUNC7("Unknown HyperLogLog encoding in hllCount()");
    }

    /* Estimate cardinality form register histogram. See:
     * "New cardinality estimation algorithms for HyperLogLog sketches"
     * Otmar Ertl, arXiv:1702.01284 */
    double z = m * FUNC4((m-reghisto[HLL_Q+1])/(double)m);
    for (j = HLL_Q; j >= 1; --j) {
        z += reghisto[j];
        z *= 0.5;
    }
    z += m * FUNC2(reghisto[0]/(double)m);
    E = FUNC5(HLL_ALPHA_INF*m*m/z);

    return (uint64_t) E;
}