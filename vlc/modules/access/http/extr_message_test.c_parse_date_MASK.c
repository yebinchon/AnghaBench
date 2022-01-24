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
typedef  scalar_t__ time_t ;
struct vlc_http_msg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct vlc_http_msg*,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct vlc_http_msg*) ; 
 scalar_t__ FUNC3 (struct vlc_http_msg*) ; 
 scalar_t__ FUNC4 (struct vlc_http_msg*) ; 
 scalar_t__ FUNC5 (struct vlc_http_msg*) ; 
 struct vlc_http_msg* FUNC6 (char*,char*,char*,char*) ; 

__attribute__((used)) static time_t FUNC7(const char *str)
{
    struct vlc_http_msg *m;
    time_t t1, t2;

    m = FUNC6("GET", "http", "www.example.com", "/");
    FUNC0(m != NULL);
    FUNC0(FUNC1(m, "Date", "%s", str) == 0);
    t1 = FUNC3(m);
    FUNC0(FUNC1(m, "Last-Modified", "%s", str) == 0);
    t2 = FUNC4(m);
    FUNC0(FUNC5(m) == 0);
    FUNC0(FUNC1(m, "Retry-After", "%s", str) == 0);
    FUNC5(m);
    FUNC2(m);

    FUNC0(t1 == t2);
    return t1;
}