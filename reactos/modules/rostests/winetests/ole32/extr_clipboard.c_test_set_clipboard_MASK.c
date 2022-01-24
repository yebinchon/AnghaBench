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
typedef  void* ULONG ;
typedef  int /*<<< orphan*/ * LPDATAOBJECT ;
typedef  void* HRESULT ;
typedef  void* HGLOBAL ;

/* Variables and functions */
 void* CO_E_NOTINITIALIZED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 (int /*<<< orphan*/ **) ; 
 void* FUNC4 (char*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (void*) ; 
 int GMEM_DDESHARE ; 
 int GMEM_MOVEABLE ; 
 int GMEM_ZEROINIT ; 
 void* FUNC6 (void*) ; 
 void* FUNC7 (int,int) ; 
 void* FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 void* FUNC10 (int /*<<< orphan*/ *) ; 
 void* FUNC11 () ; 
 void* FUNC12 (int /*<<< orphan*/ *) ; 
 void* FUNC13 (int /*<<< orphan*/ *) ; 
 void* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 void* FUNC17 (char*) ; 
 void* S_FALSE ; 
 void* S_OK ; 
 void* FUNC18 (void*,void*) ; 
 void* cf_another ; 
 void* cf_global ; 
 void* cf_onemore ; 
 void* cf_storage ; 
 void* cf_stream ; 
 int /*<<< orphan*/  FUNC19 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 

__attribute__((used)) static void FUNC26(void)
{
    HRESULT hr;
    ULONG ref;
    LPDATAOBJECT data1, data2, data_cmpl;
    HGLOBAL hblob, h;
    void *ptr;

    cf_stream = FUNC17("stream format");
    cf_storage = FUNC17("storage format");
    cf_global = FUNC17("global format");
    cf_another = FUNC17("another format");
    cf_onemore = FUNC17("one more format");

    hr = FUNC4("data1", &data1);
    FUNC19(hr == S_OK, "Failed to create data1 object: 0x%08x\n", hr);
    if(FUNC5(hr))
        return;
    hr = FUNC4("data2", &data2);
    FUNC19(hr == S_OK, "Failed to create data2 object: 0x%08x\n", hr);
    if(FUNC5(hr))
        return;
    hr = FUNC3(&data_cmpl);
    FUNC19(hr == S_OK, "Failed to create complex data object: 0x%08x\n", hr);
    if(FUNC5(hr))
        return;

    hr = FUNC14(data1);
    FUNC19(hr == CO_E_NOTINITIALIZED, "OleSetClipboard should have failed with CO_E_NOTINITIALIZED instead of 0x%08x\n", hr);

    FUNC1(NULL);
    hr = FUNC14(data1);
    FUNC19(hr == CO_E_NOTINITIALIZED, "OleSetClipboard failed with 0x%08x\n", hr);
    FUNC2();

    hr = FUNC12(NULL);
    FUNC19(hr == S_OK, "OleInitialize failed with error 0x%08x\n", hr);

    hr = FUNC14(data1);
    FUNC19(hr == S_OK, "failed to set clipboard to data1, hr = 0x%08x\n", hr);

    FUNC20(data1);

    hr = FUNC13(data1);
    FUNC19(hr == S_OK, "expected current clipboard to be data1, hr = 0x%08x\n", hr);
    hr = FUNC13(data2);
    FUNC19(hr == S_FALSE, "did not expect current clipboard to be data2, hr = 0x%08x\n", hr);
    hr = FUNC13(NULL);
    FUNC19(hr == S_FALSE, "expect S_FALSE, hr = 0x%08x\n", hr);

    FUNC23();

    hr = FUNC14(data2);
    FUNC19(hr == S_OK, "failed to set clipboard to data2, hr = 0x%08x\n", hr);
    hr = FUNC13(data1);
    FUNC19(hr == S_FALSE, "did not expect current clipboard to be data1, hr = 0x%08x\n", hr);
    hr = FUNC13(data2);
    FUNC19(hr == S_OK, "expected current clipboard to be data2, hr = 0x%08x\n", hr);
    hr = FUNC13(NULL);
    FUNC19(hr == S_FALSE, "expect S_FALSE, hr = 0x%08x\n", hr);

    /* put a format directly onto the clipboard to show
       OleFlushClipboard doesn't empty the clipboard */
    hblob = FUNC7(GMEM_DDESHARE|GMEM_MOVEABLE|GMEM_ZEROINIT, 10);
    ptr = FUNC8( hblob );
    FUNC19( ptr && ptr != hblob, "got fixed block %p / %p\n", ptr, hblob );
    FUNC9( hblob );
    FUNC19( FUNC16(NULL), "OpenClipboard failed\n" );
    h = FUNC18(cf_onemore, hblob);
    FUNC19(h == hblob, "got %p\n", h);
    h = FUNC6(cf_onemore);
    FUNC19(h == hblob, "got %p / %p\n", h, hblob);
    ptr = FUNC8( h );
    FUNC19( ptr && ptr != h, "got fixed block %p / %p\n", ptr, h );
    FUNC9( hblob );
    FUNC19( FUNC0(), "CloseClipboard failed\n" );

    hr = FUNC11();
    FUNC19(hr == S_OK, "failed to flush clipboard, hr = 0x%08x\n", hr);
    hr = FUNC13(data1);
    FUNC19(hr == S_FALSE, "did not expect current clipboard to be data1, hr = 0x%08x\n", hr);
    hr = FUNC13(data2);
    FUNC19(hr == S_FALSE, "did not expect current clipboard to be data2, hr = 0x%08x\n", hr);
    hr = FUNC13(NULL);
    FUNC19(hr == S_FALSE, "expect S_FALSE, hr = 0x%08x\n", hr);

    /* format should survive the flush */
    FUNC19( FUNC16(NULL), "OpenClipboard failed\n" );
    h = FUNC6(cf_onemore);
    FUNC19(h == hblob, "got %p\n", h);
    ptr = FUNC8( h );
    FUNC19( ptr && ptr != h, "got fixed block %p / %p\n", ptr, h );
    FUNC9( hblob );
    FUNC19( FUNC0(), "CloseClipboard failed\n" );

    FUNC20(NULL);

    FUNC19(FUNC14(NULL) == S_OK, "failed to clear clipboard, hr = 0x%08x\n", hr);

    FUNC16(NULL);
    h = FUNC6(cf_onemore);
    FUNC19(h == NULL, "got %p\n", h);
    FUNC0();

    FUNC25("setting complex\n");
    hr = FUNC14(data_cmpl);
    FUNC19(hr == S_OK, "failed to set clipboard to complex data, hr = 0x%08x\n", hr);
    FUNC21();
    FUNC20(data_cmpl);
    FUNC22(data_cmpl);

    FUNC19(FUNC14(NULL) == S_OK, "failed to clear clipboard, hr = 0x%08x\n", hr);

    FUNC24();
    FUNC22(NULL);

    ref = FUNC10(data1);
    FUNC19(ref == 0, "expected data1 ref=0, got %d\n", ref);
    ref = FUNC10(data2);
    FUNC19(ref == 0, "expected data2 ref=0, got %d\n", ref);
    ref = FUNC10(data_cmpl);
    FUNC19(ref == 0, "expected data_cmpl ref=0, got %d\n", ref);

    FUNC15();
}