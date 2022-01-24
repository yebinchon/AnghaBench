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
struct dummystream {scalar_t__ readcalls; int writecalls; scalar_t__ seekcalls; int /*<<< orphan*/  IStream_iface; } ;
typedef  int /*<<< orphan*/  buff ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dummystream*) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void FUNC3(void)
{
  struct dummystream streamobj;
  char buff[256];
  HRESULT hRet;

  if (!&pSHLWAPI_212)
    return;

  FUNC0(&streamobj);
  hRet = FUNC2(&streamobj.IStream_iface, buff, sizeof(buff));

  FUNC1(hRet == S_OK, "failed Write()\n");
  FUNC1(streamobj.readcalls == 0, "called Read()\n");
  FUNC1(streamobj.writecalls == 1, "wrong call count\n");
  FUNC1(streamobj.seekcalls == 0, "called Seek()\n");
}