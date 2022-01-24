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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  void IStream ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *,void**,...) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IMoniker ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ *,void**,...) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  MSHCTX_INPROC ; 
 int /*<<< orphan*/  MSHLFLAGS_NORMAL ; 
 int /*<<< orphan*/  STREAM_SEEK_SET ; 
 int /*<<< orphan*/ * TRUE ; 
 int /*<<< orphan*/  llZero ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (void*,int /*<<< orphan*/ *,void**)) ; 

__attribute__((used)) static void FUNC10(WCHAR* path)
{
    IStream *stream;
    IMoniker *moniker1 = NULL, *moniker2 = NULL;
    HRESULT hr;

    hr = FUNC2(path, moniker1);
    FUNC9(hr, CreateFileMoniker); 

    hr = FUNC3(NULL, TRUE, &stream);
    FUNC9(hr, CreateStreamOnHGlobal);

    /* Marshal */
    hr = FUNC0(stream, &IID_IMoniker, (IUnknown *)moniker1, MSHCTX_INPROC, NULL, MSHLFLAGS_NORMAL);
    FUNC9(hr, CoMarshalInterface);
    
    /* Rewind */
    hr = FUNC7(stream, &llZero, STREAM_SEEK_SET, NULL);
    FUNC9(hr, IStream_Seek);

    /* Unmarshal */
    hr = FUNC1(stream, &IID_IMoniker, (void**)&moniker2);
    FUNC9(hr, CoUnmarshalInterface);

    hr = FUNC4(moniker1, moniker2);
    FUNC9(hr, IsEqual);

    FUNC6(stream);
    if (moniker1) 
        FUNC5(moniker1);
    if (moniker2) 
        FUNC5(moniker2);
}