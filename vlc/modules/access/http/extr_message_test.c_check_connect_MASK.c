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
struct vlc_http_msg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 char* FUNC2 (struct vlc_http_msg const*) ; 
 char* FUNC3 (struct vlc_http_msg const*,char*) ; 
 char* FUNC4 (struct vlc_http_msg const*) ; 
 char* FUNC5 (struct vlc_http_msg const*) ; 
 char* FUNC6 (struct vlc_http_msg const*) ; 
 scalar_t__ FUNC7 (struct vlc_http_msg const*) ; 

__attribute__((used)) static void FUNC8(const struct vlc_http_msg *m)
{
    const char *str;

    FUNC0(FUNC7(m) < 0);
    str = FUNC4(m);
    FUNC0(str != NULL && !FUNC1(str, "CONNECT"));
    str = FUNC6(m);
    FUNC0(str == NULL);
    str = FUNC2(m);
    FUNC0(str != NULL && !FUNC1(str, "www.example.com"));
    str = FUNC5(m);
    FUNC0(str == NULL);

    str = FUNC3(m, "Custom-Key");
    FUNC0(str == NULL);
}