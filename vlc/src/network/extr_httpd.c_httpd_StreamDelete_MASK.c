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
struct TYPE_4__ {size_t i_http_headers; struct TYPE_4__* p_buffer; struct TYPE_4__* p_header; struct TYPE_4__* psz_mime; int /*<<< orphan*/  lock; struct TYPE_4__* p_http_headers; struct TYPE_4__* value; struct TYPE_4__* name; int /*<<< orphan*/  url; } ;
typedef  TYPE_1__ httpd_stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(httpd_stream_t *stream)
{
    FUNC1(stream->url);
    for (size_t i = 0; i < stream->i_http_headers; i++) {
        FUNC0(stream->p_http_headers[i].name);
        FUNC0(stream->p_http_headers[i].value);
    }
    FUNC0(stream->p_http_headers);
    FUNC2(&stream->lock);
    FUNC0(stream->psz_mime);
    FUNC0(stream->p_header);
    FUNC0(stream->p_buffer);
    FUNC0(stream);
}