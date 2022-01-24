#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  long ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ _UserData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 long FUNC5 (void*,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC7(void *user_data, void *buf, size_t count)
{
  _UserData *const ud = user_data;
  long read_count;

  read_count = FUNC5(buf, 1, count, ud->fd);

  if (read_count != count)
    { /* fixme -- ferror/feof */
      if (FUNC3 (ud->fd))
        {
          FUNC0 ("fread (): EOF encountered");
          FUNC2 (ud->fd);
        }
      else if (FUNC4 (ud->fd))
        {
          FUNC1 ("fread (): %s", FUNC6 (errno));
          FUNC2 (ud->fd);
        }
      else
        FUNC0 ("fread (): short read and no EOF?!?");
    }

  return read_count;
}