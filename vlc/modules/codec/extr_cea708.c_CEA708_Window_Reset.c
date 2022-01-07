
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cea708_window_t ;


 int CEA708_Window_ClearText (int *) ;
 int CEA708_Window_Init (int *) ;

__attribute__((used)) static void CEA708_Window_Reset( cea708_window_t *p_w )
{
    CEA708_Window_ClearText( p_w );
    CEA708_Window_Init( p_w );
}
