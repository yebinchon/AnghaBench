
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 scalar_t__ lemonStrlen (char*) ;
 int lemon_strcpy (char*,char*) ;
 scalar_t__ malloc (scalar_t__) ;
 char* outputDir ;
 int stderr ;

__attribute__((used)) static void handle_d_option(char *z){
  outputDir = (char *) malloc( lemonStrlen(z)+1 );
  if( outputDir==0 ){
    fprintf(stderr,"out of memory\n");
    exit(1);
  }
  lemon_strcpy(outputDir, z);
}
