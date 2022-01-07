
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int * stderr ;
 int * stdout ;

__attribute__((used)) static void maybeClose(FILE *pOut){
  if( pOut!=stdout && pOut!=stderr ) fclose(pOut);
}
