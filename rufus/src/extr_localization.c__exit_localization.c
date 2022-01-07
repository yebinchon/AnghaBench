
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 scalar_t__ embedded_loc_filename ;
 int free_dialog_list () ;
 int free_locale_list () ;
 int htab_destroy (int *) ;
 int htab_loc ;
 scalar_t__ loc_filename ;
 int localization_initialized ;
 int mtab_destroy (int ) ;
 int safe_free (scalar_t__) ;

void _exit_localization(BOOL reinit) {
 if (!localization_initialized)
  return;
 if (!reinit) {
  free_locale_list();
  if (loc_filename != embedded_loc_filename)
   safe_free(loc_filename);
 }
 free_dialog_list();
 mtab_destroy(reinit);
 htab_destroy(&htab_loc);
}
