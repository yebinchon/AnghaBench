
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ lemonStrlen (char*) ;
 int lemon_strcpy (char*,char*) ;
 scalar_t__ malloc (scalar_t__) ;
 int memory_error () ;
 char* user_templatename ;

__attribute__((used)) static void handle_T_option(char *z){
  user_templatename = (char *) malloc( lemonStrlen(z)+1 );
  if( user_templatename==0 ){
    memory_error();
  }
  lemon_strcpy(user_templatename, z);
}
