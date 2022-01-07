
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int stbi__uint8 ;
struct TYPE_3__ {scalar_t__ marker; int s; } ;
typedef TYPE_1__ jpeg ;


 scalar_t__ MARKER_none ;
 int get8u (int ) ;

__attribute__((used)) static stbi__uint8 get_marker(jpeg *j)
{
   stbi__uint8 x;
   if (j->marker != MARKER_none) { x = j->marker; j->marker = MARKER_none; return x; }
   x = get8u(j->s);
   if (x != 0xff) return MARKER_none;
   while (x == 0xff)
      x = get8u(j->s);
   return x;
}
