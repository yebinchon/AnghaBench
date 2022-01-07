
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int curwin ;
 int validate_virtcol_win (int ) ;

void
validate_virtcol()
{
    validate_virtcol_win(curwin);
}
