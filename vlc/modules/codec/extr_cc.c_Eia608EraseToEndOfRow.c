
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int i_column; int i_row; } ;
struct TYPE_7__ {scalar_t__ mode; TYPE_1__ cursor; } ;
typedef TYPE_2__ eia608_t ;


 scalar_t__ EIA608_MODE_TEXT ;
 int Eia608ClearScreenRowX (TYPE_2__*,int ,int ,int ) ;
 int Eia608GetWritingScreenIndex (TYPE_2__*) ;

__attribute__((used)) static void Eia608EraseToEndOfRow( eia608_t *h )
{
    if( h->mode == EIA608_MODE_TEXT )
        return;

    Eia608ClearScreenRowX( h, Eia608GetWritingScreenIndex( h ), h->cursor.i_row, h->cursor.i_column );
}
