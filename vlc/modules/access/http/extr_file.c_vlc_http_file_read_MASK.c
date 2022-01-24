#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vlc_http_resource {int /*<<< orphan*/ * response; } ;
struct vlc_http_file {scalar_t__ offset; } ;
struct TYPE_5__ {scalar_t__ i_buffer; } ;
typedef  TYPE_1__ block_t ;

/* Variables and functions */
 TYPE_1__* vlc_http_error ; 
 scalar_t__ FUNC0 (struct vlc_http_resource*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (struct vlc_http_resource*) ; 

block_t *FUNC4(struct vlc_http_resource *res)
{
    struct vlc_http_file *file = (struct vlc_http_file *)res;
    block_t *block = FUNC3(res);

    if (block == vlc_http_error)
    {   /* Automatically reconnect on error if server supports seek */
        if (res->response != NULL
         && FUNC1(res->response)
         && file->offset < FUNC2(res->response)
         && FUNC0(res, file->offset) == 0)
            block = FUNC3(res);

        if (block == vlc_http_error)
            return NULL;
    }

    if (block == NULL)
        return NULL; /* End of stream */

    file->offset += block->i_buffer;
    return block;
}