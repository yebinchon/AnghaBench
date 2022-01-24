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
struct TYPE_3__ {int hasError; int /*<<< orphan*/  isQuiet; } ;
struct TYPE_4__ {TYPE_1__ file; int /*<<< orphan*/ * handle; } ;
typedef  int /*<<< orphan*/  THFile ;
typedef  TYPE_2__ THDiskFile ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(THFile *self)
{
  THDiskFile *dfself = (THDiskFile*)(self);

  FUNC0(dfself->handle != NULL, 1, "attempt to use a closed file");

#if defined(_WIN64)
  if(_fseeki64(dfself->handle, 0, SEEK_END) < 0)
#elif defined(_WIN32)
  if(fseek(dfself->handle, 0, SEEK_END) < 0)
#else
  if(FUNC4(dfself->handle, 0, SEEK_END) < 0)
#endif
  {
    dfself->file.hasError = 1;
    if(!dfself->file.isQuiet)
      FUNC1("unable to seek at end of file");
  }
}