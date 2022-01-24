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
struct TYPE_4__ {size_t comment_size; int /*<<< orphan*/  comment_offset; } ;
typedef  TYPE_1__ ar_archive_zip ;
struct TYPE_5__ {int /*<<< orphan*/  stream; } ;
typedef  TYPE_2__ ar_archive ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 size_t FUNC0 (int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

size_t FUNC2(ar_archive *ar, void *buffer, size_t count)
{
    ar_archive_zip *zip = (ar_archive_zip *)ar;
    if (!zip->comment_size)
        return 0;
    if (!buffer)
        return zip->comment_size;
    if (!FUNC1(ar->stream, zip->comment_offset, SEEK_SET))
        return 0;
    if (count > zip->comment_size)
        count = zip->comment_size;
    return FUNC0(ar->stream, buffer, count);
}