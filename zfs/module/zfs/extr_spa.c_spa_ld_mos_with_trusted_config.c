
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spa_t ;
typedef int spa_import_type_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int EAGAIN ;
 int spa_ld_mos_init (int *,int ) ;
 int spa_ld_prepare_for_reload (int *) ;
 int spa_ld_trusted_config (int *,int ,int ) ;
 int spa_load_note (int *,char*) ;

__attribute__((used)) static int
spa_ld_mos_with_trusted_config(spa_t *spa, spa_import_type_t type,
    boolean_t *update_config_cache)
{
 int error;






 error = spa_ld_mos_init(spa, type);
 if (error != 0)
  return (error);





 error = spa_ld_trusted_config(spa, type, B_FALSE);
 if (error == EAGAIN) {
  if (update_config_cache != ((void*)0))
   *update_config_cache = B_TRUE;





  spa_ld_prepare_for_reload(spa);
  spa_load_note(spa, "RELOADING");
  error = spa_ld_mos_init(spa, type);
  if (error != 0)
   return (error);

  error = spa_ld_trusted_config(spa, type, B_TRUE);
  if (error != 0)
   return (error);

 } else if (error != 0) {
  return (error);
 }

 return (0);
}
