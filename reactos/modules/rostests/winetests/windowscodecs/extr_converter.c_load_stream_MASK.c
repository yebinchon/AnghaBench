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
typedef  int /*<<< orphan*/  IWICPersistStream ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IStream ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  IID_IWICPersistStream ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  WICPersistOptionBigEndian ; 
 int /*<<< orphan*/  WICPersistOptionLittleEndian ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(IUnknown *reader, IStream *stream)
{
    HRESULT hr;
    IWICPersistStream *persist;
#ifdef WORDS_BIGENDIAN
    DWORD persist_options = WICPersistOptionBigEndian;
#else
    DWORD persist_options = WICPersistOptionLittleEndian;
#endif

    hr = FUNC0(reader, &IID_IWICPersistStream, (void **)&persist);
    FUNC3(hr == S_OK, "QueryInterface failed, hr=%x\n", hr);

    hr = FUNC1(persist, stream, NULL, persist_options);
    FUNC3(hr == S_OK, "LoadEx failed, hr=%x\n", hr);

    FUNC2(persist);
}