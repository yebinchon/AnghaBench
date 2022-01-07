
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int DWORD ;
 int WARN (char*,int) ;

__attribute__((used)) static UINT map_error( DWORD error )
{
    switch (error)
    {
    case 128: return 0;
    case 135: return 2;
    case 134: return 3;
    case 133: return 4;
    case 131: return 5;
    case 130: return 6;
    case 129: return 7;
    case 132: return 10;
    default:
        WARN("unknown error %u\n", error);
        break;
    }
    return 8;
}
