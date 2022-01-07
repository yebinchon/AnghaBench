
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;
typedef int DWORD ;
 int INET_E_DOWNLOAD_FAILURE ;
 int INET_E_INVALID_CERTIFICATE ;
 int INET_E_REDIRECT_FAILED ;

__attribute__((used)) static inline HRESULT internet_error_to_hres(DWORD error)
{
    switch(error)
    {
    case 133:
    case 134:
    case 135:
    case 138:
    case 128:
    case 132:
    case 129:
    case 131:
    case 130:
        return INET_E_INVALID_CERTIFICATE;
    case 136:
    case 137:
    case 139:
        return INET_E_REDIRECT_FAILED;
    default:
        return INET_E_DOWNLOAD_FAILURE;
    }
}
