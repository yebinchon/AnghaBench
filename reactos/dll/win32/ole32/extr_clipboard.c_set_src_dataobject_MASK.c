#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  marshal_data; int /*<<< orphan*/ * src_data; int /*<<< orphan*/ * cached_enum; } ;
typedef  TYPE_1__ ole_clipbrd ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IDataObject ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IDataObject ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSHCTX_LOCAL ; 
 int /*<<< orphan*/  MSHLFLAGS_TABLESTRONG ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC11(ole_clipbrd *clipbrd, IDataObject *data)
{
    HRESULT hr;
    HWND wnd;

    if(FUNC1(hr = FUNC8(clipbrd, &wnd))) return hr;

    if(clipbrd->src_data)
    {
        FUNC9(clipbrd->marshal_data);

        FUNC6(clipbrd->src_data);
        clipbrd->src_data = NULL;
        FUNC3(FUNC2(), 0, clipbrd->cached_enum);
        clipbrd->cached_enum = NULL;
    }

    if(data)
    {
        IUnknown *unk;

        FUNC4(data);
        clipbrd->src_data = data;

        FUNC5(data, &IID_IUnknown, (void**)&unk);
        hr = FUNC0(clipbrd->marshal_data, &IID_IDataObject, unk,
                                MSHCTX_LOCAL, NULL, MSHLFLAGS_TABLESTRONG);
        FUNC7(unk); /* Don't hold a ref on IUnknown, we have one on IDataObject. */
        if(FUNC1(hr)) return hr;
        hr = FUNC10(clipbrd, data);
    }
    return hr;
}