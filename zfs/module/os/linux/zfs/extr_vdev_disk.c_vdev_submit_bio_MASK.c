#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bio_list {int dummy; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {struct bio_list* bio_list; } ;

/* Variables and functions */
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 

__attribute__((used)) static inline void
FUNC1(struct bio *bio)
{
	struct bio_list *bio_list = current->bio_list;
	current->bio_list = NULL;
	FUNC0(bio);
	current->bio_list = bio_list;
}