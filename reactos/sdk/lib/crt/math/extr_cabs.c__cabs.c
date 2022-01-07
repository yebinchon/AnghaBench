
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _complex {int x; int y; } ;


 double sqrt (int) ;

double _cabs( struct _complex z )
{
 return sqrt( z.x*z.x + z.y*z.y );

}
