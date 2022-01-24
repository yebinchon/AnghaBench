#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int uio_loffset; int /*<<< orphan*/  uio_skip; int /*<<< orphan*/  uio_resid; int /*<<< orphan*/  uio_limit; int /*<<< orphan*/  uio_segflg; scalar_t__ uio_iovcnt; int /*<<< orphan*/ * uio_bvec; } ;
typedef  TYPE_1__ uio_t ;
struct bio {scalar_t__ bi_vcnt; int /*<<< orphan*/ * bi_io_vec; } ;

/* Variables and functions */
 size_t FUNC0 (struct bio*) ; 
 int FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  MAXOFFSET_T ; 
 int /*<<< orphan*/  UIO_BVEC ; 

__attribute__((used)) static void
FUNC4(uio_t *uio, struct bio *bio)
{
	uio->uio_bvec = &bio->bi_io_vec[FUNC0(bio)];
	uio->uio_iovcnt = bio->bi_vcnt - FUNC0(bio);
	uio->uio_loffset = FUNC1(bio) << 9;
	uio->uio_segflg = UIO_BVEC;
	uio->uio_limit = MAXOFFSET_T;
	uio->uio_resid = FUNC2(bio);
	uio->uio_skip = FUNC3(bio);
}