
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_db ;


 int LSM_INFO_DB_STRUCTURE ;
 int fflush (int ) ;
 int lsm_free (int ,char*) ;
 int lsm_get_env (int *) ;
 int lsm_info (int *,int ,char**) ;
 int printf (char*,char*) ;
 int stdout ;
 int unused_parameter (void*) ;

__attribute__((used)) static void do_insert_work_hook(lsm_db *db, void *p){
  char *z = 0;
  lsm_info(db, LSM_INFO_DB_STRUCTURE, &z);
  if( z ){
    printf("%s\n", z);
    fflush(stdout);
    lsm_free(lsm_get_env(db), z);
  }

  unused_parameter(p);
}
