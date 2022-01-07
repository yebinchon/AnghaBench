
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;
typedef int DWORD ;


 int CTL_E_FILEALREADYEXISTS ;
 int CTL_E_FILENOTFOUND ;
 int CTL_E_PATHNOTFOUND ;
 int CTL_E_PERMISSIONDENIED ;





 int E_FAIL ;
 int FIXME (char*,int) ;

__attribute__((used)) static inline HRESULT create_error(DWORD err)
{
    switch(err) {
    case 129: return CTL_E_FILENOTFOUND;
    case 128: return CTL_E_PATHNOTFOUND;
    case 132: return CTL_E_PERMISSIONDENIED;
    case 130: return CTL_E_FILEALREADYEXISTS;
    case 131: return CTL_E_FILEALREADYEXISTS;
    default:
        FIXME("Unsupported error code: %d\n", err);
        return E_FAIL;
    }
}
