
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;
typedef int ASSEMBLY ;


 scalar_t__ SUCCEEDED (int ) ;
 int parse_clr_metadata (int *) ;
 int parse_pe_header (int *) ;

__attribute__((used)) static HRESULT parse_headers(ASSEMBLY *assembly)
{
    HRESULT hr;

    hr = parse_pe_header(assembly);

    if (SUCCEEDED(hr))
        hr = parse_clr_metadata(assembly);

    return hr;
}
