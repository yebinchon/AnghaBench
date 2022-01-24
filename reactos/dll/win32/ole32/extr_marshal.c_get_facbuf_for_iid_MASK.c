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
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  IPSFactoryBuffer ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  CLSID ;

/* Variables and functions */
 int CLSCTX_INPROC_SERVER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IPSFactoryBuffer ; 
 scalar_t__ S_OK ; 
 int WINE_CLSCTX_DONT_HOST ; 

__attribute__((used)) static inline HRESULT FUNC2(REFIID riid, IPSFactoryBuffer **facbuf)
{
    HRESULT       hr;
    CLSID         clsid;

    hr = FUNC1(riid, &clsid);
    if (hr != S_OK)
        return hr;
    return FUNC0(&clsid, CLSCTX_INPROC_SERVER | WINE_CLSCTX_DONT_HOST,
        NULL, &IID_IPSFactoryBuffer, (LPVOID*)facbuf);
}