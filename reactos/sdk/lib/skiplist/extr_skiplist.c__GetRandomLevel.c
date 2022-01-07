
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long ULONGLONG ;
typedef int DWORD ;
typedef int CHAR ;


 int BitScanForward (int*,int) ;
 int SKIPLIST_LEVELS ;

__attribute__((used)) static __inline CHAR
_GetRandomLevel()
{

    static DWORD dwRandom = 1;

    DWORD dwLevel = 0;
    DWORD dwShifted;


    dwRandom = (DWORD)(((ULONGLONG)dwRandom * 48271UL) % 2147483647UL);


    dwShifted = dwRandom >> (31 - SKIPLIST_LEVELS);


    if (dwShifted)
    {


        BitScanForward(&dwLevel, dwShifted);
    }


    return (CHAR)dwLevel;
}
