
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int LPSTR ;
typedef scalar_t__ HRESULT ;
typedef int GUID ;


 int CP_ACP ;
 scalar_t__ CoCreateGuid (int *) ;
 int MAX_PATH ;
 scalar_t__ S_OK ;
 int StringFromGUID2 (int *,int *,int) ;
 int WideCharToMultiByte (int ,int ,int *,int,int ,int,int *,int *) ;
 int encode_base85_guid (int *,int *) ;
 int ok (int,char*,scalar_t__) ;
 int squash_guid (int *,int *) ;

__attribute__((used)) static void compose_base85_guid(LPSTR component, LPSTR comp_base85, LPSTR squashed)
{
    WCHAR guidW[MAX_PATH];
    WCHAR base85W[MAX_PATH];
    WCHAR squashedW[MAX_PATH];
    GUID guid;
    HRESULT hr;
    int size;

    hr = CoCreateGuid(&guid);
    ok(hr == S_OK, "Expected S_OK, got %d\n", hr);

    size = StringFromGUID2(&guid, guidW, MAX_PATH);
    ok(size == 39, "Expected 39, got %d\n", hr);

    WideCharToMultiByte(CP_ACP, 0, guidW, size, component, MAX_PATH, ((void*)0), ((void*)0));
    encode_base85_guid(&guid, base85W);
    WideCharToMultiByte(CP_ACP, 0, base85W, -1, comp_base85, MAX_PATH, ((void*)0), ((void*)0));
    squash_guid(guidW, squashedW);
    WideCharToMultiByte(CP_ACP, 0, squashedW, -1, squashed, MAX_PATH, ((void*)0), ((void*)0));
}
