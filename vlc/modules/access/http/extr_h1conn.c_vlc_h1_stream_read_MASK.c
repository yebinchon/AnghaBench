#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct vlc_http_stream {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/ * tls; } ;
struct vlc_h1_conn {size_t content_length; TYPE_1__ conn; int /*<<< orphan*/  active; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_8__ {scalar_t__ i_buffer; int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_2__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNRESET ; 
 size_t UINTMAX_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct vlc_h1_conn* FUNC4 (struct vlc_http_stream*) ; 
 TYPE_2__* vlc_http_error ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int) ; 

__attribute__((used)) static block_t *FUNC6(struct vlc_http_stream *stream)
{
    struct vlc_h1_conn *conn = FUNC4(stream);
    size_t size = 2048;

    FUNC0(conn->active);

    if (conn->conn.tls == NULL)
        return vlc_http_error;

    if (size > conn->content_length)
        size = conn->content_length;
    if (size == 0)
        return NULL;

    block_t *block = FUNC1(size);
    if (FUNC3(block == NULL))
        return vlc_http_error;

    ssize_t val = FUNC5(conn->conn.tls, block->p_buffer, size, false);
    if (val <= 0)
    {
        FUNC2(block);
        if (val < 0)
            return vlc_http_error;
        if (conn->content_length != UINTMAX_MAX)
        {
            errno = ECONNRESET;
            return vlc_http_error;
        }
        return NULL;
    }

    block->i_buffer = val;
    if (conn->content_length != UINTMAX_MAX)
        conn->content_length -= val;

    return block;
}