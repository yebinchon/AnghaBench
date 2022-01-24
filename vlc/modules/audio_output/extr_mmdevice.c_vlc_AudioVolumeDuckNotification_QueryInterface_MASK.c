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
typedef  int /*<<< orphan*/  STDMETHODIMP ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  IAudioVolumeDuckNotification ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOINTERFACE ; 
 int /*<<< orphan*/  IID_IAudioVolumeDuckNotification ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 

__attribute__((used)) static STDMETHODIMP
FUNC2(
    IAudioVolumeDuckNotification *this, REFIID riid, void **ppv)
{
    if (FUNC1(riid, &IID_IUnknown)
     || FUNC1(riid, &IID_IAudioVolumeDuckNotification))
    {
        *ppv = this;
        FUNC0(this);
        return S_OK;
    }
    else
    {
       *ppv = NULL;
        return E_NOINTERFACE;
    }
}