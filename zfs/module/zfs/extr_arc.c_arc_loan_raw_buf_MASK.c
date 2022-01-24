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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  enum zio_compress { ____Placeholder_zio_compress } zio_compress ;
typedef  int /*<<< orphan*/  dmu_object_type_t ;
typedef  int /*<<< orphan*/  boolean_t ;
typedef  int /*<<< orphan*/  arc_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  arc_loaned_bytes ; 
 int /*<<< orphan*/  arc_onloan_tag ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

arc_buf_t *
FUNC2(spa_t *spa, uint64_t dsobj, boolean_t byteorder,
    const uint8_t *salt, const uint8_t *iv, const uint8_t *mac,
    dmu_object_type_t ot, uint64_t psize, uint64_t lsize,
    enum zio_compress compression_type)
{
	arc_buf_t *buf = FUNC0(spa, arc_onloan_tag, dsobj,
	    byteorder, salt, iv, mac, ot, psize, lsize, compression_type);

	FUNC1(&arc_loaned_bytes, psize);
	return (buf);
}