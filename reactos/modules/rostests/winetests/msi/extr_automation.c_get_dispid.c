
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UINT ;
typedef int * LPOLESTR ;
typedef int IDispatch ;
typedef scalar_t__ HRESULT ;
typedef int DISPID ;


 int CP_ACP ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 scalar_t__ IDispatch_GetIDsOfNames (int *,int *,int **,int,int ,int*) ;
 int IID_NULL ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 scalar_t__ S_OK ;

__attribute__((used)) static DISPID get_dispid( IDispatch *disp, const char *name )
{
    LPOLESTR str;
    UINT len;
    DISPID id = -1;
    HRESULT r;

    len = MultiByteToWideChar(CP_ACP, 0, name, -1, ((void*)0), 0 );
    str = HeapAlloc(GetProcessHeap(), 0, len*sizeof(WCHAR) );
    if (str)
    {
        MultiByteToWideChar(CP_ACP, 0, name, -1, str, len );
        r = IDispatch_GetIDsOfNames( disp, &IID_NULL, &str, 1, 0, &id );
        HeapFree(GetProcessHeap(), 0, str);
        if (r != S_OK)
            return -1;
    }

    return id;
}
