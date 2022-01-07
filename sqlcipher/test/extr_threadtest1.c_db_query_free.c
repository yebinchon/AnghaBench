
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char**) ;
 int sqlite3_free (char*) ;

void db_query_free(char **az){
  int i;
  for(i=0; az[i]; i++){
    sqlite3_free(az[i]);
  }
  free(az);
}
