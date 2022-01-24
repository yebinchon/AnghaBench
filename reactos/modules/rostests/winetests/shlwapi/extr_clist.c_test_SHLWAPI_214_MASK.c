#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct dummystream {scalar_t__ seekcalls; int statcalls; scalar_t__ readcalls; scalar_t__ writecalls; int /*<<< orphan*/  IStream_iface; } ;
struct TYPE_5__ {long QuadPart; } ;
typedef  TYPE_1__ ULARGE_INTEGER ;
struct TYPE_6__ {long QuadPart; } ;
typedef  TYPE_2__ LARGE_INTEGER ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dummystream*) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(void)
{
  struct dummystream streamobj;
  ULARGE_INTEGER ul;
  LARGE_INTEGER ll;
  HRESULT hRet;

  if (!&pSHLWAPI_214)
    return;

  FUNC0(&streamobj);
  ll.QuadPart = 5000l;
  FUNC1(&streamobj.IStream_iface, ll, 0, NULL);
  ul.QuadPart = 0;
  streamobj.seekcalls = 0;
  hRet = FUNC3(&streamobj.IStream_iface, &ul);

  FUNC2(hRet == S_OK, "failed Stat()\n");
  FUNC2(streamobj.statcalls == 1, "wrong call count\n");
  FUNC2(streamobj.readcalls == 0, "called Read()\n");
  FUNC2(streamobj.writecalls == 0, "called Write()\n");
  FUNC2(streamobj.seekcalls == 0, "called Seek()\n");
  FUNC2(ul.QuadPart == 5000l, "Stat gave wrong size\n");
}