#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vlc_http_resource {int /*<<< orphan*/ * response; } ;
struct block_t {int dummy; } ;
typedef  struct block_t block_t ;

/* Variables and functions */
 struct block_t* vlc_http_error ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct block_t* FUNC1 (struct vlc_http_resource*) ; 

block_t *FUNC2(struct vlc_http_resource *res)
{
    struct block_t *block = FUNC1(res);
    if (block != NULL && block != vlc_http_error)
        return block;

    /* Automatically try to reconnect */
    /* TODO: Retry-After parsing, loop and pacing timer */
    FUNC0(res->response);
    res->response = NULL;
    return FUNC1(res);
}