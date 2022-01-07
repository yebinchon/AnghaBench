
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int eia608_t ;


 int EIA608_SCREEN_ROWS ;
 int Eia608ClearScreenRow (int *,int,int) ;

__attribute__((used)) static void Eia608ClearScreen( eia608_t *h, int i_screen )
{
    for( int i = 0; i < EIA608_SCREEN_ROWS; i++ )
        Eia608ClearScreenRow( h, i_screen, i );
}
