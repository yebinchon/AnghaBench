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
typedef  int /*<<< orphan*/  opj_bio_t ;
typedef  int OPJ_UINT32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static OPJ_UINT32 FUNC1(opj_bio_t *bio)
{
    OPJ_UINT32 n;
    if (!FUNC0(bio, 1)) {
        return 1;
    }
    if (!FUNC0(bio, 1)) {
        return 2;
    }
    if ((n = FUNC0(bio, 2)) != 3) {
        return (3 + n);
    }
    if ((n = FUNC0(bio, 5)) != 31) {
        return (6 + n);
    }
    return (37 + FUNC0(bio, 7));
}