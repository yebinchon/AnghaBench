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
struct TYPE_2__ {int QuadPart; } ;
struct dummystream {int readcalls; scalar_t__ writecalls; int seekcalls; int statcalls; TYPE_1__ pos; int /*<<< orphan*/  IStream_iface; scalar_t__ failreadcall; scalar_t__ failstatcall; } ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct dummystream*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC3(void)
{
  struct dummystream streamobj;
  BOOL bRet;

  if (!&pSHLWAPI_166)
    return FALSE;

  FUNC0(&streamobj);
  bRet = FUNC2(&streamobj.IStream_iface);

  if (bRet != TRUE)
    return FALSE; /* This version doesn't support stream ops on clists */

  FUNC1(streamobj.readcalls == 0, "called Read()\n");
  FUNC1(streamobj.writecalls == 0, "called Write()\n");
  FUNC1(streamobj.seekcalls == 0, "called Seek()\n");
  FUNC1(streamobj.statcalls == 1, "wrong call count\n");

  streamobj.statcalls = 0;
  streamobj.pos.QuadPart = 50001;

  bRet = FUNC2(&streamobj.IStream_iface);

  FUNC1(bRet == FALSE, "failed after seek adjusted\n");
  FUNC1(streamobj.readcalls == 0, "called Read()\n");
  FUNC1(streamobj.writecalls == 0, "called Write()\n");
  FUNC1(streamobj.seekcalls == 0, "called Seek()\n");
  FUNC1(streamobj.statcalls == 1, "wrong call count\n");

  /* Failure cases */
  FUNC0(&streamobj);
  streamobj.pos.QuadPart = 50001;
  streamobj.failstatcall = TRUE; /* 1: Stat() Bad, Read() OK */
  bRet = FUNC2(&streamobj.IStream_iface);
  FUNC1(bRet == FALSE, "should be FALSE after read is OK\n");
  FUNC1(streamobj.readcalls == 1, "wrong call count\n");
  FUNC1(streamobj.writecalls == 0, "called Write()\n");
  FUNC1(streamobj.seekcalls == 1, "wrong call count\n");
  FUNC1(streamobj.statcalls == 1, "wrong call count\n");
  FUNC1(streamobj.pos.QuadPart == 0, "Didn't seek to start\n");

  FUNC0(&streamobj);
  streamobj.pos.QuadPart = 50001;
  streamobj.failstatcall = TRUE;
  streamobj.failreadcall = TRUE; /* 2: Stat() Bad, Read() Bad Also */
  bRet = FUNC2(&streamobj.IStream_iface);
  FUNC1(bRet == TRUE, "Should be true after read fails\n");
  FUNC1(streamobj.readcalls == 1, "wrong call count\n");
  FUNC1(streamobj.writecalls == 0, "called Write()\n");
  FUNC1(streamobj.seekcalls == 0, "Called Seek()\n");
  FUNC1(streamobj.statcalls == 1, "wrong call count\n");
  FUNC1(streamobj.pos.QuadPart == 50001, "called Seek() after read failed\n");
  return TRUE;
}