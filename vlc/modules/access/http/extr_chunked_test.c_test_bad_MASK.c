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
struct vlc_http_stream {int dummy; } ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  chunked_stream ; 
 int /*<<< orphan*/  chunked_tls ; 
 int stream_bad ; 
 char const* stream_content ; 
 int /*<<< orphan*/  stream_length ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 struct vlc_http_stream* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * vlc_http_error ; 
 int /*<<< orphan*/  FUNC4 (struct vlc_http_stream*,int) ; 
 int /*<<< orphan*/ * FUNC5 (struct vlc_http_stream*) ; 

__attribute__((used)) static void FUNC6(const char *payload)
{
    struct vlc_http_stream *s;
    block_t *b;

    stream_content = payload;
    stream_length = FUNC2(payload);
    stream_bad = true;

    s = FUNC3(&chunked_stream, &chunked_tls);
    FUNC0(s != NULL);

    while ((b = FUNC5(s)) != vlc_http_error)
    {
        FUNC0(b != NULL);
        FUNC1(b);
    }

    FUNC4(s, false);
}