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
typedef  int /*<<< orphan*/  WIN32_FIND_DATAW ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  Bool ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  True ; 

__attribute__((used)) static Bool FUNC2(const WCHAR *path)
{
  WIN32_FIND_DATAW fd;
  HANDLE handle;
  handle = FUNC1(path, &fd);
  if (handle == INVALID_HANDLE_VALUE)
    return False;
  FUNC0(handle);
  return True;
}