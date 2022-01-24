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
#define  CDIO_LOG_ASSERT 132 
#define  CDIO_LOG_DEBUG 131 
#define  CDIO_LOG_ERROR 130 
#define  CDIO_LOG_INFO 129 
#define  CDIO_LOG_WARN 128 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int cdio_loglevel_default ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

extern void
FUNC5(cdio_log_level_t level, const char message[])
{
  switch (level)
    {
    case CDIO_LOG_ERROR:
      if (level >= cdio_loglevel_default) {
        FUNC4 (stderr, "**ERROR: %s\n", message);
        FUNC3 (stderr);
      }
      FUNC2 (EXIT_FAILURE);
      break;
    case CDIO_LOG_DEBUG:
      if (level >= cdio_loglevel_default) {
        FUNC4 (stdout, "--DEBUG: %s\n", message);
      }
      break;
    case CDIO_LOG_WARN:
      if (level >= cdio_loglevel_default) {
        FUNC4 (stdout, "++ WARN: %s\n", message);
      }
      break;
    case CDIO_LOG_INFO:
      if (level >= cdio_loglevel_default) {
        FUNC4 (stdout, "   INFO: %s\n", message);
      }
      break;
    case CDIO_LOG_ASSERT:
      if (level >= cdio_loglevel_default) {
        FUNC4 (stderr, "!ASSERT: %s\n", message);
        FUNC3 (stderr);
      }
      FUNC0 ();
      break;
    default:
      FUNC1 ();
      break;
    }

  FUNC3 (stdout);
}