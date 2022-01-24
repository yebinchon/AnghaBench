#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG ;
struct TYPE_3__ {int /*<<< orphan*/ * pFilter; } ;
typedef  scalar_t__ (* SendPinFunc ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;
typedef  TYPE_1__ PIN_INFO ;
typedef  scalar_t__ PIN_DIRECTION ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  IPin ;
typedef  int /*<<< orphan*/  IEnumPins ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ E_NOTIMPL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ VFW_E_ENUM_OUT_OF_SYNC ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static HRESULT FUNC13( IPin *from, SendPinFunc fnMiddle, LPVOID arg, SendPinFunc fnEnd )
{
    PIN_INFO pin_info;
    ULONG amount = 0;
    HRESULT hr = S_OK;
    HRESULT hr_return = S_OK;
    IEnumPins *enumpins = NULL;
    BOOL foundend = TRUE;
    PIN_DIRECTION from_dir;

    FUNC8( from, &from_dir );

    hr = FUNC9( from, NULL, &amount );
    if (hr != E_NOTIMPL && amount)
        FUNC1("Use QueryInternalConnections!\n");

    pin_info.pFilter = NULL;
    hr = FUNC10( from, &pin_info );
    if (FUNC0(hr))
        goto out;

    hr = FUNC2( pin_info.pFilter, &enumpins );
    if (FUNC0(hr))
        goto out;

    hr = FUNC6( enumpins );
    while (hr == S_OK) {
        IPin *pin = NULL;
        hr = FUNC4( enumpins, 1, &pin, NULL );
        if (hr == VFW_E_ENUM_OUT_OF_SYNC)
        {
            hr = FUNC6( enumpins );
            continue;
        }
        if (pin)
        {
            PIN_DIRECTION dir;

            FUNC8( pin, &dir );
            if (dir != from_dir)
            {
                IPin *connected = NULL;

                foundend = FALSE;
                FUNC7( pin, &connected );
                if (connected)
                {
                    HRESULT hr_local;

                    hr_local = fnMiddle( connected, arg );
                    hr_return = FUNC12( hr_return, hr_local );
                    FUNC11(connected);
                }
            }
            FUNC11( pin );
        }
        else
        {
            hr = S_OK;
            break;
        }
    }

    if (!foundend)
        hr = hr_return;
    else if (fnEnd) {
        HRESULT hr_local;

        hr_local = fnEnd( from, arg );
        hr_return = FUNC12( hr_return, hr_local );
    }
    FUNC5(enumpins);

out:
    if (pin_info.pFilter)
        FUNC3( pin_info.pFilter );
    return hr;
}