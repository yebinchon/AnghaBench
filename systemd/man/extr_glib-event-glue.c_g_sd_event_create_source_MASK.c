#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_event ;
struct TYPE_4__ {int events; int /*<<< orphan*/  fd; } ;
struct TYPE_3__ {TYPE_2__ pollfd; int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ SDEventSource ;
typedef  int /*<<< orphan*/  GSource ;

/* Variables and functions */
 int G_IO_ERR ; 
 int G_IO_HUP ; 
 int G_IO_IN ; 
 int /*<<< orphan*/  event_funcs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

GSource *FUNC4(sd_event *event) {
  SDEventSource *source;

  source = (SDEventSource *)FUNC1(&event_funcs, sizeof(SDEventSource));

  source->event = FUNC3(event);
  source->pollfd.fd = FUNC2(event);
  source->pollfd.events = G_IO_IN | G_IO_HUP | G_IO_ERR;

  FUNC0((GSource *)source, &source->pollfd);

  return (GSource *)source;
}