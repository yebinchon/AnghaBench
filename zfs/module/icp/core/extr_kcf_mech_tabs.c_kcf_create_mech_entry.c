
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int mod_hash_val_t ;
typedef int mod_hash_key_t ;
typedef size_t kcf_ops_class_t ;
struct TYPE_3__ {scalar_t__* me_name; int me_mutex; int me_mechid; scalar_t__ me_threshold; } ;
typedef TYPE_1__ kcf_mech_entry_t ;
typedef scalar_t__ crypto_mech_type_t ;
struct TYPE_4__ {int met_size; TYPE_1__* met_tab; } ;


 int CRYPTO_MAX_MECH_NAME ;
 scalar_t__ CRYPTO_MECH_INVALID ;
 size_t KCF_FIRST_OPSCLASS ;
 int KCF_INVALID_MECH_CLASS ;
 int KCF_INVALID_MECH_NAME ;
 size_t KCF_LAST_OPSCLASS ;
 int KCF_MECHID (size_t,int) ;
 int KCF_MECH_TAB_FULL ;
 int KCF_SUCCESS ;
 int kcf_mech_hash ;
 scalar_t__ kcf_mech_hash_find (char*) ;
 int kcf_mech_tabs_lock ;
 TYPE_2__* kcf_mech_tabs_tab ;
 int mod_hash_insert (int ,int ,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int strlcpy (scalar_t__*,char*,int) ;

__attribute__((used)) static int
kcf_create_mech_entry(kcf_ops_class_t class, char *mechname)
{
 crypto_mech_type_t mt;
 kcf_mech_entry_t *me_tab;
 int i = 0, size;

 if ((class < KCF_FIRST_OPSCLASS) || (class > KCF_LAST_OPSCLASS))
  return (KCF_INVALID_MECH_CLASS);

 if ((mechname == ((void*)0)) || (mechname[0] == 0))
  return (KCF_INVALID_MECH_NAME);




 mutex_enter(&kcf_mech_tabs_lock);
 mt = kcf_mech_hash_find(mechname);
 if (mt != CRYPTO_MECH_INVALID) {

  mutex_exit(&kcf_mech_tabs_lock);
  return (KCF_SUCCESS);
 }

 me_tab = kcf_mech_tabs_tab[class].met_tab;
 size = kcf_mech_tabs_tab[class].met_size;

 while (i < size) {
  mutex_enter(&(me_tab[i].me_mutex));
  if (me_tab[i].me_name[0] == 0) {

   (void) strlcpy(me_tab[i].me_name, mechname,
       CRYPTO_MAX_MECH_NAME);
   me_tab[i].me_name[CRYPTO_MAX_MECH_NAME-1] = '\0';
   me_tab[i].me_mechid = KCF_MECHID(class, i);




   me_tab[i].me_threshold = 0;

   mutex_exit(&(me_tab[i].me_mutex));

   (void) mod_hash_insert(kcf_mech_hash,
       (mod_hash_key_t)me_tab[i].me_name,
       (mod_hash_val_t)&(me_tab[i].me_mechid));
   break;
  }
  mutex_exit(&(me_tab[i].me_mutex));
  i++;
 }

 mutex_exit(&kcf_mech_tabs_lock);

 if (i == size) {
  return (KCF_MECH_TAB_FULL);
 }

 return (KCF_SUCCESS);
}
