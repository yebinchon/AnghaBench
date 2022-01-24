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
struct TYPE_2__ {int /*<<< orphan*/  xxhash64; int /*<<< orphan*/  file; } ;
typedef  TYPE_1__ curl_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,size_t const) ; 
 size_t FUNC1 (void*,size_t,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC2(void* data, size_t size, size_t count, void* ptr) {
    curl_data_t* cdata = (curl_data_t*)ptr;
    size_t const written = FUNC1(data, size, count, cdata->file);
    FUNC0(&cdata->xxhash64, data, written * size);
    return written;
}