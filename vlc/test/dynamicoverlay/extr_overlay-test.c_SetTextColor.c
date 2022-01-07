
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int CheckedCommand (int *,int *,char*,int,int,int,int) ;

void SetTextColor( FILE *p_cmd, FILE *p_res, int i_overlay, int i_red,
                   int i_green, int i_blue ) {
    CheckedCommand( p_cmd, p_res, "SetTextColor %d %d %d %d\n", i_overlay,
                    i_red, i_green, i_blue );
}
