
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char char_u ;


 int isdigit (char) ;

__attribute__((used)) static int
points_to_pixels(char_u *str, char_u **end, int vertical)
{
    int pixels;
    int points = 0;
    int divisor = 0;

    while (*str)
    {
 if (*str == '.' && divisor == 0)
 {

     divisor = 1;
     continue;
 }

 if (!isdigit(*str))
     break;

 points *= 10;
 points += *str - '0';
 divisor *= 10;

 ++str;
    }

    if (divisor == 0)
 divisor = 1;

    pixels = points/divisor;
    *end = str;
    return pixels;
}
