
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TEST_STATUS ;






TEST_STATUS TEST_CombineStatus(TEST_STATUS a, TEST_STATUS b)
{
    TEST_STATUS result = a;

    switch (a)
    {
    case 129: result = (129 == b || 128 == b) ? (129) : (130); break;
    case 130: result = 130; break;
    case 128: result = b; break;
    }

    return result;
}
