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
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IMemoryData ;
typedef  int /*<<< orphan*/  IAudioData ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ E_NOINTERFACE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IAudioData ; 
 int /*<<< orphan*/  IID_IMemoryData ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC6(void)
{
    IUnknown *unknown = FUNC4();
    IMemoryData *memory_data = NULL;
    IAudioData *audio_data = NULL;

    HRESULT result;

    result = FUNC2(unknown, &IID_IMemoryData, (void **)&memory_data);
    FUNC5(E_NOINTERFACE == result, "got 0x%08x\n", result);

    result = FUNC2(unknown, &IID_IAudioData, (void **)&audio_data);
    FUNC5(S_OK == result, "got 0x%08x\n", result);
    if (S_OK == result)
    {
        result = FUNC0(audio_data, &IID_IMemoryData, (void **)&memory_data);
        FUNC5(E_NOINTERFACE == result, "got 0x%08x\n", result);

        FUNC1(audio_data);
    }

    FUNC3(unknown);
}