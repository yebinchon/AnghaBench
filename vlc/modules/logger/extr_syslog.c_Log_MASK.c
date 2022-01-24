#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  psz_module; int /*<<< orphan*/ * psz_header; } ;
typedef  TYPE_1__ vlc_log_t ;
typedef  int /*<<< orphan*/  va_list ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int* priorities ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (char**,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *opaque, int type, const vlc_log_t *meta,
                const char *format, va_list ap)
{
    static const char default_msg[] = "message lost";
    char *str;
    int priority = priorities[type];

    if (FUNC2(&str, format, ap) == -1)
        str = (char *)default_msg;

    if (meta->psz_header != NULL)
        FUNC1(priority, "[%s] %s: %s", *meta->psz_header, meta->psz_module,
               str);
    else
        FUNC1(priority, "%s: %s", meta->psz_module, str);

    if (str != default_msg)
        FUNC0(str);
    (void) opaque;
}