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
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  libvlc_log_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4 (void *data, int level, const libvlc_log_t *log,
                             const char *fmt, va_list ap)
{
    FILE *stream = data;

    FUNC0 (stream);
    FUNC3 (stream, fmt, ap);
    FUNC1 ('\n', stream);
    FUNC2 (stream);
    (void) level; (void) log;
}