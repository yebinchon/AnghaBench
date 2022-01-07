
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;




 int TRUE ;

__attribute__((used)) static BOOL is_redirect_response(DWORD status_code)
{
    switch(status_code) {
    case 130:
    case 131:
    case 129:
    case 128:
        return TRUE;
    }
    return FALSE;
}
