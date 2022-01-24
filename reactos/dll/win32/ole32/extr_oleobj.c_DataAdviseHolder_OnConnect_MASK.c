#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t maxCons; int /*<<< orphan*/ * delegate; TYPE_1__* connections; int /*<<< orphan*/ * remote_connections; } ;
struct TYPE_4__ {int /*<<< orphan*/  advf; int /*<<< orphan*/ * pAdvSink; int /*<<< orphan*/  formatetc; } ;
typedef  int /*<<< orphan*/  IDataObject ;
typedef  int /*<<< orphan*/  IDataAdviseHolder ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_2__ DataAdviseHolder ;
typedef  size_t DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  WINE_ADVF_REMOTE ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 

HRESULT FUNC3(IDataAdviseHolder *iface, IDataObject *pDelegate)
{
  DataAdviseHolder *This = FUNC2(iface);
  DWORD index;
  HRESULT hr = S_OK;

  for(index = 0; index < This->maxCons; index++)
  {
    if(This->connections[index].pAdvSink != NULL)
    {
      hr = FUNC1(pDelegate, &This->connections[index].formatetc,
                               This->connections[index].advf,
                               This->connections[index].pAdvSink,
                               &This->remote_connections[index]);
      if (FUNC0(hr)) break;
      This->connections[index].advf |= WINE_ADVF_REMOTE;
    }
  }
  This->delegate = pDelegate;
  return hr;
}