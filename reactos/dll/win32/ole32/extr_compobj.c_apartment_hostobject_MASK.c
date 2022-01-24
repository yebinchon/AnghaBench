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
struct host_object_params {int /*<<< orphan*/  stream; int /*<<< orphan*/  iid; int /*<<< orphan*/  clsid; int /*<<< orphan*/  apartment_threaded; int /*<<< orphan*/  regdata; } ;
struct apartment {int dummy; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  LARGE_INTEGER ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_PATH ; 
 int /*<<< orphan*/  MSHCTX_INPROC ; 
 int /*<<< orphan*/  MSHLFLAGS_NORMAL ; 
 int /*<<< orphan*/  REGDB_E_CLASSNOTREG ; 
 int /*<<< orphan*/  STREAM_SEEK_SET ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct apartment*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC10(struct apartment *apt,
                                    const struct host_object_params *params)
{
    IUnknown *object;
    HRESULT hr;
    static const LARGE_INTEGER llZero;
    WCHAR dllpath[MAX_PATH+1];

    FUNC5("clsid %s, iid %s\n", FUNC8(&params->clsid), FUNC8(&params->iid));

    if (!FUNC9(&params->regdata, dllpath, FUNC0(dllpath)))
    {
        /* failure: CLSID is not found in registry */
        FUNC6("class %s not registered inproc\n", FUNC8(&params->clsid));
        return REGDB_E_CLASSNOTREG;
    }

    hr = FUNC7(apt, dllpath, params->apartment_threaded,
                                  &params->clsid, &params->iid, (void **)&object);
    if (FUNC2(hr))
        return hr;

    hr = FUNC1(params->stream, &params->iid, object, MSHCTX_INPROC, NULL, MSHLFLAGS_NORMAL);
    if (FUNC2(hr))
        FUNC4(object);
    FUNC3(params->stream, llZero, STREAM_SEEK_SET, NULL);

    return hr;
}