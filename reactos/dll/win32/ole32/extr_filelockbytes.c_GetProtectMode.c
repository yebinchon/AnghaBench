
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int PAGE_READONLY ;
 int PAGE_READWRITE ;
 int STGM_ACCESS_MODE (int ) ;



__attribute__((used)) static DWORD GetProtectMode(DWORD openFlags)
{
    switch(STGM_ACCESS_MODE(openFlags))
    {
    case 128:
    case 129:
        return PAGE_READWRITE;
    }
    return PAGE_READONLY;
}
