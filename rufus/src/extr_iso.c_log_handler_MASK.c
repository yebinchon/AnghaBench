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
typedef  int cdio_log_level_t ;

/* Variables and functions */
#define  CDIO_LOG_DEBUG 128 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 

__attribute__((used)) static void FUNC1 (cdio_log_level_t level, const char *message)
{
	switch(level) {
	case CDIO_LOG_DEBUG:
		// TODO: use a setting to enable libcdio debug?
		return;
	default:
		FUNC0("libcdio: %s\n", message);
	}
}