
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_5__ {int refs; int entry; void* DllGetClassObject; void* DllCanUnloadNow; scalar_t__ library; void* library_name; } ;
typedef TYPE_1__ OpenDll ;
typedef int LPCWSTR ;
typedef int HRESULT ;
typedef scalar_t__ HANDLE ;
typedef void* DllGetClassObjectFunc ;
typedef void* DllCanUnloadNowFunc ;


 TYPE_1__* COMPOBJ_DllList_Get (int ) ;
 int CO_E_DLLNOTFOUND ;
 int ERR (char*,int ) ;
 int E_ACCESSDENIED ;
 int E_OUTOFMEMORY ;
 int EnterCriticalSection (int *) ;
 int FreeLibrary (scalar_t__) ;
 scalar_t__ GetProcAddress (scalar_t__,char*) ;
 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int LOAD_WITH_ALTERED_SEARCH_PATH ;
 int LeaveCriticalSection (int *) ;
 scalar_t__ LoadLibraryExW (int ,int ,int ) ;
 int S_OK ;
 int TRACE (char*,int ) ;
 int csOpenDllList ;
 int debugstr_w (int ) ;
 int list_add_tail (int *,int *) ;
 int lstrlenW (int ) ;
 int memcpy (void*,int ,int) ;
 int openDllList ;

__attribute__((used)) static HRESULT COMPOBJ_DllList_Add(LPCWSTR library_name, OpenDll **ret)
{
    OpenDll *entry;
    int len;
    HRESULT hr = S_OK;
    HANDLE hLibrary;
    DllCanUnloadNowFunc DllCanUnloadNow;
    DllGetClassObjectFunc DllGetClassObject;

    TRACE("%s\n", debugstr_w(library_name));

    *ret = COMPOBJ_DllList_Get(library_name);
    if (*ret) return S_OK;



    hLibrary = LoadLibraryExW(library_name, 0, LOAD_WITH_ALTERED_SEARCH_PATH);
    if (!hLibrary)
    {
        ERR("couldn't load in-process dll %s\n", debugstr_w(library_name));

        return E_ACCESSDENIED;
    }

    DllCanUnloadNow = (void *)GetProcAddress(hLibrary, "DllCanUnloadNow");

    DllGetClassObject = (void *)GetProcAddress(hLibrary, "DllGetClassObject");
    if (!DllGetClassObject)
    {

        ERR("couldn't find function DllGetClassObject in %s\n", debugstr_w(library_name));
        FreeLibrary(hLibrary);
        return CO_E_DLLNOTFOUND;
    }

    EnterCriticalSection( &csOpenDllList );

    *ret = COMPOBJ_DllList_Get(library_name);
    if (*ret)
    {


        FreeLibrary(hLibrary);
    }
    else
    {
        len = lstrlenW(library_name);
        entry = HeapAlloc(GetProcessHeap(),0, sizeof(OpenDll));
        if (entry)
            entry->library_name = HeapAlloc(GetProcessHeap(), 0, (len + 1)*sizeof(WCHAR));
        if (entry && entry->library_name)
        {
            memcpy(entry->library_name, library_name, (len + 1)*sizeof(WCHAR));
            entry->library = hLibrary;
            entry->refs = 1;
            entry->DllCanUnloadNow = DllCanUnloadNow;
            entry->DllGetClassObject = DllGetClassObject;
            list_add_tail(&openDllList, &entry->entry);
            *ret = entry;
        }
        else
        {
            HeapFree(GetProcessHeap(), 0, entry);
            hr = E_OUTOFMEMORY;
            FreeLibrary(hLibrary);
        }
    }

    LeaveCriticalSection( &csOpenDllList );

    return hr;
}
