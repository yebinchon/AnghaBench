
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {scalar_t__ i_firstrow; scalar_t__ i_lastrow; } ;
typedef TYPE_1__ cea708_window_t ;



__attribute__((used)) static uint8_t CEA708_Window_RowCount( const cea708_window_t *p_w )
{
    if( p_w->i_firstrow > p_w->i_lastrow )
        return 0;
    return 1 + p_w->i_lastrow - p_w->i_firstrow;
}
