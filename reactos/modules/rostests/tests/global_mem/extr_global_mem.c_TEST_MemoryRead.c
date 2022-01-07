
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TEST_STATUS ;
typedef int LPVOID ;
typedef int DWORD ;


 int FAILED ;
 scalar_t__ IsBadReadPtr (int ,int ) ;
 int PASSED ;

TEST_STATUS TEST_MemoryRead(LPVOID mem, DWORD cbSize)
{
    TEST_STATUS result = FAILED;

    if (0 == IsBadReadPtr(mem, cbSize))
    {
        result = PASSED;
    }
    return result;
}
