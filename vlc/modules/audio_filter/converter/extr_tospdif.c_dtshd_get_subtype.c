
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int dtshd_get_subtype( unsigned i_frame_length )
{
    switch( i_frame_length )
    {
        case 512: return 0x0;
        case 1024: return 0x1;
        case 2048: return 0x2;
        case 4096: return 0x3;
        case 8192: return 0x4;
        case 16384: return 0x5;
        default: return -1;
    }
}
