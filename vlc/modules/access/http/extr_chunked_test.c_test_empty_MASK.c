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
 int /*<<< orphan*/  chunked_stream ; 
 int /*<<< orphan*/  chunked_tls ; 
 int stream_bad ; 
 char* stream_content ; 
 int stream_length ; 
 struct vlc_http_stream* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vlc_http_stream*,int) ; 
 int /*<<< orphan*/ * FUNC3 (struct vlc_http_stream*) ; 

__attribute__((used)) static void FUNC4(void)
{
    struct vlc_http_stream *s;
    block_t *b;

    stream_content = "0\r\n";
    stream_length = 3;
    stream_bad = true;

    s = FUNC1(&chunked_stream, &chunked_tls);
    FUNC0(s != NULL);

    b = FUNC3(s);
    FUNC0(b == NULL);
    b = FUNC3(s);
    FUNC0(b == NULL);
    FUNC2(s, false);
}