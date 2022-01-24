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
typedef  enum zio_compress { ____Placeholder_zio_compress } zio_compress ;
typedef  int /*<<< orphan*/  arc_buf_hdr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int ZIO_COMPRESS_OFF ; 

__attribute__((used)) static inline enum zio_compress
FUNC2(arc_buf_hdr_t *hdr)
{
	return (FUNC0(hdr) ?
	    FUNC1(hdr) : ZIO_COMPRESS_OFF);
}