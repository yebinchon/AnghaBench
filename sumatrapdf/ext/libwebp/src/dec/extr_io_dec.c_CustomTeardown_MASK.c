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
struct TYPE_4__ {int /*<<< orphan*/ * memory; } ;
typedef  TYPE_1__ WebPDecParams ;
struct TYPE_5__ {scalar_t__ opaque; } ;
typedef  TYPE_2__ VP8Io ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(const VP8Io* io) {
  WebPDecParams* const p = (WebPDecParams*)io->opaque;
  FUNC0(p->memory);
  p->memory = NULL;
}