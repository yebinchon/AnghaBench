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
struct vlc_tls {int dummy; } ;
struct vlc_http_stream {int /*<<< orphan*/ * cbs; } ;
struct vlc_chunked_stream {int eof; int error; struct vlc_http_stream stream; scalar_t__ chunk_length; struct vlc_tls* tls; struct vlc_http_stream* parent; } ;

/* Variables and functions */
 struct vlc_chunked_stream* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vlc_chunked_callbacks ; 

struct vlc_http_stream *FUNC2(struct vlc_http_stream *parent,
                                         struct vlc_tls *tls)
{
    struct vlc_chunked_stream *s = FUNC0(sizeof (*s));
    if (FUNC1(s == NULL))
        return NULL;

    s->stream.cbs = &vlc_chunked_callbacks;
    s->parent = parent;
    s->tls = tls;
    s->chunk_length = 0;
    s->eof = false;
    s->error = false;
    return &s->stream;
}