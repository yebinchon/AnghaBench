
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int CheckedCommand (int *,int *,char*) ;

void StartAtomic( FILE *p_cmd, FILE *p_res ) {
    CheckedCommand( p_cmd, p_res, "StartAtomic\n" );
}
