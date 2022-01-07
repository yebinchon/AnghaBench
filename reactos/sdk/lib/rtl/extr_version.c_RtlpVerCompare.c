
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int UCHAR ;
typedef int BOOLEAN ;


 int FALSE ;






__attribute__((used)) static BOOLEAN
RtlpVerCompare(ULONG left, ULONG right, UCHAR Condition)
{
    switch (Condition)
    {
        case 132:
            return (left == right);
        case 131:
            return (left > right);
        case 130:
            return (left >= right);
        case 129:
            return (left < right);
        case 128:
            return (left <= right);
        default:
            break;
    }
    return FALSE;
}
