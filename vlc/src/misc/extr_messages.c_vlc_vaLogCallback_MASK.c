#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* ops; } ;
typedef  TYPE_2__ vlc_logger_t ;
typedef  int /*<<< orphan*/  vlc_log_t ;
typedef  int /*<<< orphan*/  va_list ;
struct TYPE_5__ {int /*<<< orphan*/  (* log ) (TYPE_2__*,int,int /*<<< orphan*/  const*,char const*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,int /*<<< orphan*/  const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 

__attribute__((used)) static void FUNC3(vlc_logger_t *logger, int type,
                              const vlc_log_t *item, const char *format,
                              va_list ap)
{
    if (logger != NULL) {
        int canc = FUNC2();

        logger->ops->log(logger, type, item, format, ap);
        FUNC1(canc);
    }
}