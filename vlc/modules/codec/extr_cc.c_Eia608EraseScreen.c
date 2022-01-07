
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ i_screen; } ;
typedef TYPE_1__ eia608_t ;


 int Eia608ClearScreen (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void Eia608EraseScreen( eia608_t *h, bool b_displayed )
{
    Eia608ClearScreen( h, b_displayed ? h->i_screen : (1-h->i_screen) );
}
