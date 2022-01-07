
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int UCHAR ;
UCHAR bytesPerPixel(ULONG Format)
{




    switch (Format)
    {
        case 134:
            return 1;

        case 131:
        case 130:
            return 1;

        case 129:
        case 128:
            return 1;

        case 135:
            return 2;

        case 133:
            return 3;

        case 132:
            return 4;

        default:
            return 0;
    }
}
