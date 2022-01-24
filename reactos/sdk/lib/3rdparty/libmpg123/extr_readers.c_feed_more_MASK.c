#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ size; TYPE_1__* last; } ;
struct TYPE_7__ {TYPE_5__ buffer; } ;
struct TYPE_8__ {TYPE_2__ rdat; } ;
typedef  TYPE_3__ mpg123_handle ;
struct TYPE_6__ {scalar_t__ size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 scalar_t__ NOQUIET ; 
 int READER_ERROR ; 
 scalar_t__ VERBOSE3 ; 
 int FUNC0 (TYPE_5__*,unsigned char const*,long) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

int FUNC4(mpg123_handle *fr, const unsigned char *in, long count)
{
	int ret = 0;
	if(VERBOSE3) FUNC1("feed_more");
	if((ret = FUNC0(&fr->rdat.buffer, in, count)) != 0)
	{
		ret = READER_ERROR;
		if(NOQUIET) FUNC3("Failed to add buffer, return: %i", ret);
	}
	else /* Not talking about filelen... that stays at 0. */

	if(VERBOSE3) FUNC2("feed_more: %p %luB bufsize=%lu", fr->rdat.buffer.last->data,
		(unsigned long)fr->rdat.buffer.last->size, (unsigned long)fr->rdat.buffer.size);
	return ret;
}