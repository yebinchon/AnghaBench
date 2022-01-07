
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool IsWellKnownPayload (int type)
{
    switch (type)
    {
        case 0:
        case 3:
        case 8:
        case 10:
        case 11:
        case 12:
        case 14:
        case 32:
        case 33:
            return 1;
   }
   return 0;
}
