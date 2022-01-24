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
struct TYPE_3__ {int hasError; int /*<<< orphan*/  isQuiet; int /*<<< orphan*/  isWritable; } ;
struct TYPE_4__ {TYPE_1__ file; int /*<<< orphan*/ * handle; } ;
typedef  int /*<<< orphan*/  THFile ;
typedef  TYPE_2__ THDiskFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,size_t) ; 
 size_t FUNC2 (char const*,int,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t FUNC3(THFile *self, const char *str, size_t size)
{
  THDiskFile *dfself = (THDiskFile*)(self);
  size_t nwrite;

  FUNC0(dfself->handle != NULL, 1, "attempt to use a closed file");
  FUNC0(dfself->file.isWritable, 1, "attempt to write in a read-only file");

  nwrite = FUNC2(str, 1, size, dfself->handle);
  if(nwrite != size)
  {
    dfself->file.hasError = 1;
    if(!dfself->file.isQuiet)
      FUNC1("write error: wrote %zu blocks instead of %zu", nwrite, size);
  }

  return nwrite;
}