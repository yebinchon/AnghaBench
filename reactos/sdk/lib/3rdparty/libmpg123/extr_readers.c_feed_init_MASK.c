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
struct TYPE_4__ {int /*<<< orphan*/  flags; scalar_t__ filepos; scalar_t__ filelen; int /*<<< orphan*/  buffer; } ;
struct TYPE_5__ {TYPE_1__ rdat; } ;
typedef  TYPE_2__ mpg123_handle ;

/* Variables and functions */
 int /*<<< orphan*/  READER_BUFFERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(mpg123_handle *fr)
{
	FUNC1(&fr->rdat.buffer);
	FUNC0(&fr->rdat.buffer);
	fr->rdat.filelen = 0;
	fr->rdat.filepos = 0;
	fr->rdat.flags |= READER_BUFFERED;
	return 0;
}