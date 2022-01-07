
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int parse_data ;
typedef int UriBuilder ;
typedef int HRESULT ;
typedef int DWORD ;


 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int validate_password (int const*,int *,int ) ;
 int validate_username (int const*,int *,int ) ;

__attribute__((used)) static HRESULT validate_userinfo(const UriBuilder *builder, parse_data *data, DWORD flags) {
    HRESULT hr;

    hr = validate_username(builder, data, flags);
    if(FAILED(hr))
        return hr;

    hr = validate_password(builder, data, flags);
    if(FAILED(hr))
        return hr;

    return S_OK;
}
