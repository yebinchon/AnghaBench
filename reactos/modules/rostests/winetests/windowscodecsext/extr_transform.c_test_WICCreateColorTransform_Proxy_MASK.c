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
typedef  int /*<<< orphan*/  IWICColorTransform ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  COINIT_APARTMENTTHREADED ; 
 int /*<<< orphan*/  COINIT_MULTITHREADED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(void)
{
    HRESULT hr;
    IWICColorTransform *transform;

    hr = FUNC3( NULL );
    FUNC4( hr == E_INVALIDARG, "got %08x\n", hr );

    transform = NULL;
    hr = FUNC3( &transform );
    FUNC4( hr == S_OK, "got %08x\n", hr );
    if (transform) FUNC2( transform );

    hr = FUNC0( NULL, COINIT_APARTMENTTHREADED );
    FUNC4( hr == S_OK, "got %08x\n", hr );

    transform = NULL;
    hr = FUNC3( &transform );
    FUNC4( hr == S_OK, "got %08x\n", hr );
    if (transform) FUNC2( transform );
    FUNC1();

    hr = FUNC0( NULL, COINIT_MULTITHREADED );
    FUNC4( hr == S_OK, "got %08x\n", hr );

    transform = NULL;
    hr = FUNC3( &transform );
    FUNC4( hr == S_OK, "got %08x\n", hr );
    if (transform) FUNC2( transform );
    FUNC1();
}