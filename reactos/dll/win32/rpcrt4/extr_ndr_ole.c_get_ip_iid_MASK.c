#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ MaxCount; } ;
typedef  TYPE_1__* PMIDL_STUB_MESSAGE ;
typedef  scalar_t__* PFORMAT_STRING ;
typedef  int /*<<< orphan*/  IID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned char*,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FC_CONSTANT_IID ; 
 scalar_t__ FC_IP ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  const IID_IUnknown ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static const IID* FUNC4(PMIDL_STUB_MESSAGE pStubMsg, unsigned char *pMemory, PFORMAT_STRING pFormat)
{
  const IID *riid;
  if (!pFormat) return &IID_IUnknown;
  FUNC2("format=%02x %02x\n", pFormat[0], pFormat[1]);
  if (pFormat[0] != FC_IP) FUNC1("format=%d\n", pFormat[0]);
  if (pFormat[1] == FC_CONSTANT_IID) {
    riid = (const IID *)&pFormat[2];
  } else {
    FUNC0(pStubMsg, pMemory, pFormat+2, 0);
    riid = (const IID *)pStubMsg->MaxCount;
  }
  if (!riid) riid = &IID_IUnknown;
  FUNC2("got %s\n", FUNC3(riid));
  return riid;
}