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
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IAudioData ;
typedef  int HRESULT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int E_INVALIDARG ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IAudioData ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int S_OK ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    IUnknown *unknown = FUNC7();
    IAudioData *audio_data = NULL;
    BYTE buffer[100] = {0};
    DWORD actual_data = 0;

    HRESULT result;

    result = FUNC5(unknown, &IID_IAudioData, (void **)&audio_data);
    if (FUNC0(result))
    {
        /* test_audiodata_query_interface handles this case */
        FUNC9("No IAudioData\n");
        goto out_unknown;
    }

    result = FUNC3(audio_data, 0);
    FUNC8(S_OK == result, "got 0x%08x\n", result);

    result = FUNC4(audio_data, sizeof(buffer), buffer, 0);
    FUNC8(S_OK == result, "got 0x%08x\n", result);

    result = FUNC3(audio_data, sizeof(buffer) + 1);
    FUNC8(E_INVALIDARG == result, "got 0x%08x\n", result);

    result = FUNC3(audio_data, sizeof(buffer));
    FUNC8(S_OK == result, "got 0x%08x\n", result);

    actual_data = 0xdeadbeef;
    result = FUNC1(audio_data, NULL, NULL, &actual_data);
    FUNC8(S_OK == result, "got 0x%08x\n", result);
    FUNC8(sizeof(buffer) == actual_data, "got %u\n", actual_data);

    result = FUNC3(audio_data, 0);
    FUNC8(S_OK == result, "got 0x%08x\n", result);

    actual_data = 0xdeadbeef;
    result = FUNC1(audio_data, NULL, NULL, &actual_data);
    FUNC8(S_OK == result, "got 0x%08x\n", result);
    FUNC8(0 == actual_data, "got %u\n", actual_data);

    FUNC2(audio_data);

out_unknown:
    FUNC6(unknown);
}