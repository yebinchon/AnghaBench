#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int off_t ;
typedef  int /*<<< orphan*/  __int64 ;
struct TYPE_3__ {int /*<<< orphan*/  isQuiet; } ;
struct TYPE_4__ {TYPE_1__ file; int /*<<< orphan*/ * handle; } ;
typedef  int /*<<< orphan*/  THFile ;
typedef  TYPE_2__ THDiskFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 long FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t FUNC5(THFile *self)
{
  THDiskFile *dfself = (THDiskFile*)(self);
  FUNC0(dfself->handle != NULL, 1, "attempt to use a closed file");

#if defined(_WIN64)
  __int64 offset = _ftelli64(dfself->handle);
#elif defined(_WIN32)
  long offset = ftell(dfself->handle);
#else
  off_t offset = FUNC4(dfself->handle);
#endif
  if (offset > -1)
      return (size_t)offset;
  else if(!dfself->file.isQuiet)
      FUNC1("unable to obtain disk file offset (maybe a long overflow occurred)");

  return 0;
}