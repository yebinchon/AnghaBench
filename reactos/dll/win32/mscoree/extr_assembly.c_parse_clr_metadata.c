
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;
typedef int DWORD ;
typedef int ASSEMBLY ;


 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int parse_metadata_header (int *,int *) ;

__attribute__((used)) static HRESULT parse_clr_metadata(ASSEMBLY *assembly)
{
    HRESULT hr;
    DWORD hdrsz;

    hr = parse_metadata_header(assembly, &hdrsz);
    if (FAILED(hr))
        return hr;

    return S_OK;
}
