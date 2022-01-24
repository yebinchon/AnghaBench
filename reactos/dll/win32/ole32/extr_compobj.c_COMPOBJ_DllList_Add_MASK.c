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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_5__ {int refs; int /*<<< orphan*/  entry; void* DllGetClassObject; void* DllCanUnloadNow; scalar_t__ library; void* library_name; } ;
typedef  TYPE_1__ OpenDll ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ HANDLE ;
typedef  void* DllGetClassObjectFunc ;
typedef  void* DllCanUnloadNowFunc ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CO_E_DLLNOTFOUND ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_ACCESSDENIED ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  LOAD_WITH_ALTERED_SEARCH_PATH ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  csOpenDllList ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  openDllList ; 

__attribute__((used)) static HRESULT FUNC15(LPCWSTR library_name, OpenDll **ret)
{
    OpenDll *entry;
    int len;
    HRESULT hr = S_OK;
    HANDLE hLibrary;
    DllCanUnloadNowFunc DllCanUnloadNow;
    DllGetClassObjectFunc DllGetClassObject;

    FUNC10("%s\n", FUNC11(library_name));

    *ret = FUNC0(library_name);
    if (*ret) return S_OK;

    /* do this outside the csOpenDllList to avoid creating a lock dependency on
     * the loader lock */
    hLibrary = FUNC9(library_name, 0, LOAD_WITH_ALTERED_SEARCH_PATH);
    if (!hLibrary)
    {
        FUNC1("couldn't load in-process dll %s\n", FUNC11(library_name));
        /* failure: DLL could not be loaded */
        return E_ACCESSDENIED; /* FIXME: or should this be CO_E_DLLNOTFOUND? */
    }

    DllCanUnloadNow = (void *)FUNC4(hLibrary, "DllCanUnloadNow");
    /* Note: failing to find DllCanUnloadNow is not a failure */
    DllGetClassObject = (void *)FUNC4(hLibrary, "DllGetClassObject");
    if (!DllGetClassObject)
    {
        /* failure: the dll did not export DllGetClassObject */
        FUNC1("couldn't find function DllGetClassObject in %s\n", FUNC11(library_name));
        FUNC3(hLibrary);
        return CO_E_DLLNOTFOUND;
    }

    FUNC2( &csOpenDllList );

    *ret = FUNC0(library_name);
    if (*ret)
    {
        /* another caller to this function already added the dll while we
         * weren't in the critical section */
        FUNC3(hLibrary);
    }
    else
    {
        len = FUNC13(library_name);
        entry = FUNC6(FUNC5(),0, sizeof(OpenDll));
        if (entry)
            entry->library_name = FUNC6(FUNC5(), 0, (len + 1)*sizeof(WCHAR));
        if (entry && entry->library_name)
        {
            FUNC14(entry->library_name, library_name, (len + 1)*sizeof(WCHAR));
            entry->library = hLibrary;
            entry->refs = 1;
            entry->DllCanUnloadNow = DllCanUnloadNow;
            entry->DllGetClassObject = DllGetClassObject;
            FUNC12(&openDllList, &entry->entry);
            *ret = entry;
        }
        else
        {
            FUNC7(FUNC5(), 0, entry);
            hr = E_OUTOFMEMORY;
            FUNC3(hLibrary);
        }
    }

    FUNC8( &csOpenDllList );

    return hr;
}