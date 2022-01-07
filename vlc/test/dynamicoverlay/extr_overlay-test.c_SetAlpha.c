
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int CheckedCommand (int *,int *,char*,int,int) ;

void SetAlpha( FILE *p_cmd, FILE *p_res, int i_overlay, int i_alpha ) {
    CheckedCommand( p_cmd, p_res, "SetAlpha %d %d\n", i_overlay, i_alpha );
}
