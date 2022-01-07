
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int DWORD ;







__attribute__((used)) static const WCHAR *get_adaptertype( DWORD type, int *physical )
{
    static const WCHAR ethernetW[] = {'E','t','h','e','r','n','e','t',' ','8','0','2','.','3',0};
    static const WCHAR wirelessW[] = {'W','i','r','e','l','e','s','s',0};
    static const WCHAR firewireW[] = {'1','3','9','4',0};
    static const WCHAR tunnelW[] = {'T','u','n','n','e','l',0};

    switch (type)
    {
    case 131: *physical = -1; return ethernetW;
    case 129: *physical = -1; return wirelessW;
    case 130: *physical = -1; return firewireW;
    case 128: *physical = 0; return tunnelW;
    default: *physical = 0; return ((void*)0);
    }
}
