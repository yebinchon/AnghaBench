
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int CheckedCommand (int *,int *,char*,int,int,int) ;

void SetPosition( FILE *p_cmd, FILE *p_res, int i_overlay, int i_x, int i_y ) {
    CheckedCommand( p_cmd, p_res, "SetPosition %d %d %d\n", i_overlay, i_x,
                    i_y );
}
