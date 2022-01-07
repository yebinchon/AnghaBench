
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int eia608_t ;


 int Eia608ClearScreenRowX (int *,int,int,int ) ;

__attribute__((used)) static void Eia608ClearScreenRow( eia608_t *h, int i_screen, int i_row )
{
    Eia608ClearScreenRowX( h, i_screen, i_row, 0 );
}
