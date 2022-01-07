
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int FALSE ;





 int ok (int ,char*,int,int) ;

__attribute__((used)) static BOOL is_valid_png_type_depth(int color_type, int bit_depth, BOOL plte)
{
    switch (color_type)
    {
    case 132:
        return bit_depth == 1 || bit_depth == 2 || bit_depth == 4 || bit_depth == 8 || bit_depth == 16;

    case 129:
        return bit_depth == 8 || bit_depth == 16;

    case 130:
        return (bit_depth == 1 || bit_depth == 2 || bit_depth == 4 || bit_depth == 8) && plte;

    case 131:
        return bit_depth == 8 || bit_depth == 16;

    case 128:
        return bit_depth == 8 || bit_depth == 16;

    default:
        ok(0, "unknown PNG type %d, depth %d\n", color_type, bit_depth);
        return FALSE;
    }
}
