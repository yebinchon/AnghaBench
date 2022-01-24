#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bio {int dummy; } ;
struct TYPE_4__ {int dr_bio_count; scalar_t__* dr_bio; } ;
typedef  TYPE_1__ dio_request_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC2(dio_request_t *dr)
{
	int i;

	for (i = 0; i < dr->dr_bio_count; i++)
		if (dr->dr_bio[i])
			FUNC0(dr->dr_bio[i]);

	FUNC1(dr, sizeof (dio_request_t) +
	    sizeof (struct bio *) * dr->dr_bio_count);
}