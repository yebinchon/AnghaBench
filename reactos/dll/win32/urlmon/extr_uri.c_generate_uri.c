
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int parse_data ;
typedef int UriBuilder ;
struct TYPE_4__ {int create_flags; int * raw_uri; } ;
typedef TYPE_1__ Uri ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 scalar_t__ E_INVALIDARG ;
 scalar_t__ E_OUTOFMEMORY ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ INET_E_INVALID_URL ;
 scalar_t__ S_OK ;
 int * SysAllocStringLen (int *,int ) ;
 scalar_t__ canonicalize_uri (int const*,TYPE_1__*,int ) ;
 int generate_raw_uri (int const*,int *,int ) ;

__attribute__((used)) static HRESULT generate_uri(const UriBuilder *builder, const parse_data *data, Uri *uri, DWORD flags) {
    HRESULT hr;
    DWORD length = generate_raw_uri(data, ((void*)0), 0);
    uri->raw_uri = SysAllocStringLen(((void*)0), length);
    if(!uri->raw_uri)
        return E_OUTOFMEMORY;

    generate_raw_uri(data, uri->raw_uri, 0);

    hr = canonicalize_uri(data, uri, flags);
    if(FAILED(hr)) {
        if(hr == E_INVALIDARG)
            return INET_E_INVALID_URL;
        return hr;
    }

    uri->create_flags = flags;
    return S_OK;
}
