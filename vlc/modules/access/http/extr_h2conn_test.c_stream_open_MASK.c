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
struct vlc_http_msg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  FUNC1 (struct vlc_http_msg*) ; 
 struct vlc_http_msg* FUNC2 (char*,char*,char*,char*) ; 
 struct vlc_http_stream* FUNC3 (int /*<<< orphan*/ ,struct vlc_http_msg*) ; 

__attribute__((used)) static struct vlc_http_stream *FUNC4(void)
{
    struct vlc_http_msg *m = FUNC2("GET", "https",
                                                 "www.example.com", "/");
    FUNC0(m != NULL);

    struct vlc_http_stream *s = FUNC3(conn, m);
    FUNC1(m);
    return s;
}