
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int CheckedCommand (int *,int *,char*,int) ;
 int fscanf (int *,char*,int*) ;

int GetTextSize( FILE *p_cmd, FILE *p_res, int i_overlay ) {
    int i_size;

    CheckedCommand( p_cmd, p_res, "GetTextSize %d\n", i_overlay );
    fscanf( p_res, "%d", &i_size );

    return i_size;
}
