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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_5__ {TYPE_1__* stgmed_buf; scalar_t__ use_cache_file; } ;
struct TYPE_4__ {scalar_t__ file; int /*<<< orphan*/  cache_file; } ;
typedef  TYPE_2__ Binding ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC5(Binding *This, const WCHAR *file_name)
{
    FUNC3(This->stgmed_buf->cache_file);
    This->stgmed_buf->cache_file = FUNC4(file_name);

    if(This->use_cache_file) {
        This->stgmed_buf->file = FUNC0(file_name, GENERIC_READ, FILE_SHARE_READ|FILE_SHARE_WRITE, NULL,
                OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
        if(This->stgmed_buf->file == INVALID_HANDLE_VALUE)
            FUNC2("CreateFile failed: %u\n", FUNC1());
    }
}