#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * outStream; } ;
struct TYPE_5__ {int /*<<< orphan*/ * stream; } ;
struct TYPE_7__ {int needInit; TYPE_2__ rc; TYPE_1__ matchFinderBase; } ;
typedef  int /*<<< orphan*/  SRes ;
typedef  int /*<<< orphan*/  ISzAlloc ;
typedef  int /*<<< orphan*/  ISeqOutStream ;
typedef  int /*<<< orphan*/  ISeqInStream ;
typedef  scalar_t__ CLzmaEncHandle ;
typedef  TYPE_3__ CLzmaEnc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static SRes FUNC1(CLzmaEncHandle pp, ISeqOutStream *outStream, ISeqInStream *inStream,
    ISzAlloc *alloc, ISzAlloc *allocBig)
{
  CLzmaEnc *p = (CLzmaEnc *)pp;
  p->matchFinderBase.stream = inStream;
  p->needInit = 1;
  p->rc.outStream = outStream;
  return FUNC0(p, 0, alloc, allocBig);
}