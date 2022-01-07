
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AudioFormatID ;






__attribute__((used)) static bool
IsAudioFormatDigital(AudioFormatID id)
{
    switch (id)
    {
        case 'IAC3':
        case 'iac3':
        case 130:
        case 129:
        case 128:
            return 1;
        default:
            return 0;
    }
}
