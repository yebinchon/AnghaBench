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
typedef  int /*<<< orphan*/  zio_t ;
struct request_queue {int dummy; } ;
struct block_device {int dummy; } ;
struct bio {int /*<<< orphan*/ * bi_private; int /*<<< orphan*/  bi_end_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct request_queue* FUNC1 (struct block_device*) ; 
 struct bio* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,struct block_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct block_device*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vdev_disk_io_flush_completion ; 
 int /*<<< orphan*/  FUNC7 (struct bio*) ; 

__attribute__((used)) static int
FUNC8(struct block_device *bdev, zio_t *zio)
{
	struct request_queue *q;
	struct bio *bio;

	q = FUNC1(bdev);
	if (!q)
		return (FUNC0(ENXIO));

	bio = FUNC2(GFP_NOIO, 0);
	/* bio_alloc() with __GFP_WAIT never returns NULL */
	if (FUNC6(bio == NULL))
		return (FUNC0(ENOMEM));

	bio->bi_end_io = vdev_disk_io_flush_completion;
	bio->bi_private = zio;
	FUNC3(bio, bdev);
	FUNC4(bio);
	FUNC7(bio);
	FUNC5(bdev);

	return (0);
}