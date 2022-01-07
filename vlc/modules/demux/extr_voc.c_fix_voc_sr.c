
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int fix_voc_sr( unsigned int sr )
{
    switch( sr )
    {


        case 11111:
            return 11025;

        case 22222:
            return 22050;

        case 44444:
            return 44100;
    }
    return sr;
}
