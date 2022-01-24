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
typedef  int /*<<< orphan*/  (* class_constructor ) (int /*<<< orphan*/ *,void**) ;
typedef  int /*<<< orphan*/  IWICPersistStream ;
typedef  int /*<<< orphan*/  IWICMetadataReader ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IWICMetadataReader ; 
 int /*<<< orphan*/  IID_IWICPersistStream ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  WICPersistOptionDefault ; 
 int /*<<< orphan*/ * FUNC6 (void const*,int) ; 

__attribute__((used)) static HRESULT FUNC7(const void *data, int data_size,
                                      class_constructor constructor,
                                      IWICMetadataReader **reader)
{
    HRESULT hr;
    IWICMetadataReader *metadata_reader;
    IWICPersistStream *persist;
    IStream *stream;

    /* FIXME: Use IWICComponentFactory_CreateMetadataReader once it's implemented */

    hr = constructor(&IID_IWICMetadataReader, (void**)&metadata_reader);
    if (FUNC0(hr)) return hr;

    hr = FUNC2(metadata_reader, &IID_IWICPersistStream, (void **)&persist);
    if (FUNC0(hr))
    {
        FUNC3(metadata_reader);
        return hr;
    }

    stream = FUNC6(data, data_size);
    FUNC4(persist, stream, NULL, WICPersistOptionDefault);
    FUNC1(stream);

    FUNC5(persist);

    *reader = metadata_reader;
    return S_OK;
}