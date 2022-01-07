
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int CheckedCommand (int *,int *,char*,int,int,int,char*,int) ;
 int printf (char*) ;

void DataSharedMem( FILE *p_cmd, FILE *p_res, int i_overlay, int i_width,
                    int i_height, char *psz_format, int i_shmid ) {

    printf( "Sending data via shared memory..." );
    CheckedCommand( p_cmd, p_res, "DataSharedMem %d %d %d %s %d\n", i_overlay,
                    i_width, i_height, psz_format, i_shmid );
    printf( " done\n" );
}
