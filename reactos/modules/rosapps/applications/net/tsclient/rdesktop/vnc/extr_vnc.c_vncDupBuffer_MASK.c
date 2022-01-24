#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int h; int linew; TYPE_1__* format; int /*<<< orphan*/  data; int /*<<< orphan*/  w; } ;
typedef  TYPE_2__ vncBuffer ;
struct TYPE_6__ {int bitsPerPixel; int /*<<< orphan*/  depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

vncBuffer *
FUNC2(vncBuffer * b)
{
	vncBuffer *buf = FUNC1(b->w, b->h, b->format->depth);
	FUNC0(buf->data, b->data, b->linew * b->h * b->format->bitsPerPixel / 8);
	return buf;
}