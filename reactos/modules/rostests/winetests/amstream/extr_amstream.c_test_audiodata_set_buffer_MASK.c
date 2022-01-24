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
typedef  int /*<<< orphan*/ * HRESULT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/ * E_INVALIDARG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IAudioData ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * S_OK ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9(void)
{
    IUnknown *unknown = FUNC6();
    IAudioData *audio_data = NULL;
    BYTE buffer[100] = {0};
    DWORD length = 0;
    BYTE *data = NULL;

    HRESULT result;

    result = FUNC4(unknown, &IID_IAudioData, (void **)&audio_data);
    if (FUNC0(result))
    {
        /* test_audiodata_query_interface handles this case */
        FUNC8("No IAudioData\n");
        goto out_unknown;
    }

    result = FUNC3(audio_data, 100, NULL, 0);
    FUNC7(S_OK == result, "got 0x%08x\n", *result);

    data = (BYTE *)0xdeadbeef;
    length = 0xdeadbeef;
    result = FUNC1(audio_data, &length, &data, NULL);
    FUNC7(S_OK == result, "got 0x%08x\n", *result);
    FUNC7(100 == length, "got %u\n", length);
    FUNC7(NULL != data, "got %p\n", *data);

    result = FUNC3(audio_data, 0, buffer, 0);
    FUNC7(E_INVALIDARG == result, "got 0x%08x\n", *result);

    result = FUNC3(audio_data, sizeof(buffer), buffer, 0);
    FUNC7(S_OK == result, "got 0x%08x\n", *result);

    data = (BYTE *)0xdeadbeef;
    length = 0xdeadbeef;
    result = FUNC1(audio_data, &length, &data, NULL);
    FUNC7(S_OK == result, "got 0x%08x\n", *result);
    FUNC7(sizeof(buffer) == length, "got %u\n", length);
    FUNC7(buffer == data, "got %p\n", *data);

    FUNC2(audio_data);

out_unknown:
    FUNC5(unknown);
}