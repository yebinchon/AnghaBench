#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t data_left; size_t bytes_done; } ;
struct TYPE_5__ {int /*<<< orphan*/  stream; } ;
struct TYPE_7__ {TYPE_2__ progress; TYPE_1__ super; } ;
typedef  TYPE_3__ ar_archive_zip ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static bool FUNC2(ar_archive_zip *zip, void *buffer, size_t count)
{
    if (count > zip->progress.data_left) {
        FUNC1("Unexpected EOS in stored data");
        return false;
    }
    if (FUNC0(zip->super.stream, buffer, count) != count) {
        FUNC1("Unexpected EOF in stored data");
        return false;
    }
    zip->progress.data_left -= count;
    zip->progress.bytes_done += count;
    return true;
}