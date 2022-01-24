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
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  strm_string ;
typedef  int /*<<< orphan*/  strm_stream ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  STRM_IO_READ ; 
 int STRM_NG ; 
 int STRM_OK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC5(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  int fd;
  strm_string path;
  char buf[7];

  FUNC1(strm, argc, args, "S", &path);
  fd = FUNC0(FUNC4(path, buf), O_RDONLY);
  if (fd < 0) {
    FUNC3(strm, "fread() failed");
    return STRM_NG;
  }
  *ret = FUNC2(fd, STRM_IO_READ);
  return STRM_OK;
}