#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t i_http_headers; int /*<<< orphan*/  lock; TYPE_3__* p_http_headers; } ;
typedef  TYPE_1__ httpd_stream_t ;
struct TYPE_8__ {int /*<<< orphan*/  value; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ httpd_header ;
struct TYPE_9__ {struct TYPE_9__* value; struct TYPE_9__* name; } ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 TYPE_3__* FUNC3 (size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(httpd_stream_t * p_stream,
                               const httpd_header *p_headers, size_t i_headers)
{
    if (!p_stream)
        return VLC_EGENERIC;

    FUNC4(&p_stream->lock);
    if (p_stream->p_http_headers) {
        for (size_t i = 0; i < p_stream->i_http_headers; i++) {
            FUNC0(p_stream->p_http_headers[i].name);
            FUNC0(p_stream->p_http_headers[i].value);
        }
        FUNC0(p_stream->p_http_headers);
        p_stream->p_http_headers = NULL;
        p_stream->i_http_headers = 0;
    }

    if (!p_headers || !i_headers) {
        FUNC5(&p_stream->lock);
        return VLC_SUCCESS;
    }

    p_stream->p_http_headers = FUNC3(i_headers, sizeof(httpd_header));
    if (!p_stream->p_http_headers) {
        FUNC5(&p_stream->lock);
        return VLC_ENOMEM;
    }

    size_t j = 0;
    for (size_t i = 0; i < i_headers; i++) {
        if (FUNC2(!p_headers[i].name || !p_headers[i].value))
            continue;

        p_stream->p_http_headers[j].name = FUNC1(p_headers[i].name);
        p_stream->p_http_headers[j].value = FUNC1(p_headers[i].value);

        if (FUNC2(!p_stream->p_http_headers[j].name ||
                      !p_stream->p_http_headers[j].value)) {
            FUNC0(p_stream->p_http_headers[j].name);
            FUNC0(p_stream->p_http_headers[j].value);
            break;
        }
        j++;
    }
    p_stream->i_http_headers = j;
    FUNC5(&p_stream->lock);
    return VLC_SUCCESS;
}