#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  rfbScreenInfoPtr ;
struct TYPE_4__ {int /*<<< orphan*/ * bytes; } ;
struct TYPE_5__ {int count; TYPE_1__ data; int /*<<< orphan*/  is16; } ;
typedef  TYPE_2__ rfbColourMap ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int) ; 

rfbColourMap *
FUNC1(rfbScreenInfoPtr s, int n)
{
	rfbColourMap *m = (rfbColourMap *) FUNC0(sizeof(rfbColourMap));
	m->is16 = FALSE;
	m->count = n;
	m->data.bytes = (uint8_t *) FUNC0(n * 3);
	return m;
}