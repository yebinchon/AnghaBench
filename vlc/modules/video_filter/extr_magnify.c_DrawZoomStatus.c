
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static void DrawZoomStatus( uint8_t *pb_dst, int i_pitch, int i_width, int i_height,
                            int i_offset_x, int i_offset_y, bool b_visible )
{
    static const char *p_hide =
        "X   X XXXXX XXXX  XXXXX   XXXXX  XXX   XXX  XX XXL"
        "X   X   X   X   X X          X  X   X X   X X X XL"
        "XXXXX   X   X   X XXXX      X   X   X X   X X   XL"
        "X   X   X   X   X X        X    X   X X   X X   XL"
        "X   X XXXXX XXXX  XXXXX   XXXXX  XXX   XXX  X   XL";
    static const char *p_show =
        " XXXX X   X  XXX  X   X   XXXXX  XXX   XXX  XX XXL"
        "X     X   X X   X X   X      X  X   X X   X X X XL"
        " XXX  XXXXX X   X X X X     X   X   X X   X X   XL"
        "    X X   X X   X X X X    X    X   X X   X X   XL"
        "XXXX  X   X  XXX   X X    XXXXX  XXX   XXX  X   XL";
    const char *p_draw = b_visible ? p_hide : p_show;

    for( int i = 0, x = i_offset_x, y = i_offset_y; p_draw[i] != '\0'; i++ )
    {
        if( p_draw[i] == 'X' )
        {
            if( x < i_width && y < i_height )
                pb_dst[y*i_pitch + x] = 0xff;
            x++;
        }
        else if( p_draw[i] == ' ' )
        {
            x++;
        }
        else if( p_draw[i] == 'L' )
        {
            x = i_offset_x;
            y++;
        }
    }
}
