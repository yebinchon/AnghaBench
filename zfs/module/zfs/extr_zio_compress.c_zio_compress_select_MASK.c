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
typedef  int /*<<< orphan*/  spa_t ;
typedef  enum zio_compress { ____Placeholder_zio_compress } zio_compress ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SPA_FEATURE_LZ4_COMPRESS ; 
 int ZIO_COMPRESS_FUNCTIONS ; 
 int ZIO_COMPRESS_INHERIT ; 
 int ZIO_COMPRESS_LEGACY_ON_VALUE ; 
 int ZIO_COMPRESS_LZ4_ON_VALUE ; 
 int ZIO_COMPRESS_ON ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

enum zio_compress
FUNC2(spa_t *spa, enum zio_compress child,
    enum zio_compress parent)
{
	enum zio_compress result;

	FUNC0(child < ZIO_COMPRESS_FUNCTIONS);
	FUNC0(parent < ZIO_COMPRESS_FUNCTIONS);
	FUNC0(parent != ZIO_COMPRESS_INHERIT);

	result = child;
	if (result == ZIO_COMPRESS_INHERIT)
		result = parent;

	if (result == ZIO_COMPRESS_ON) {
		if (FUNC1(spa, SPA_FEATURE_LZ4_COMPRESS))
			result = ZIO_COMPRESS_LZ4_ON_VALUE;
		else
			result = ZIO_COMPRESS_LEGACY_ON_VALUE;
	}

	return (result);
}