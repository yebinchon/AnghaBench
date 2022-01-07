
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;




 int TRUE ;

__attribute__((used)) static BOOL is_mem_writable(DWORD prot)
{
    switch (prot & 0xff)
    {
        case 129:
        case 128:
        case 131:
        case 130:
            return TRUE;

        default:
            return FALSE;
    }
}
