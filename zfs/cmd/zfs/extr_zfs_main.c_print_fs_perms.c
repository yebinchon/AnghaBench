
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uu_avl_t ;
struct TYPE_9__ {int fsps_list; } ;
typedef TYPE_2__ fs_perm_set_t ;
struct TYPE_8__ {char* fsp_name; int * fsp_uge_avl; int * fsp_sc_avl; } ;
struct TYPE_10__ {TYPE_1__ fspn_fsperm; } ;
typedef TYPE_3__ fs_perm_node_t ;
typedef int buf ;


 int B_FALSE ;
 int B_TRUE ;
 int MAXNAMELEN ;
 char* gettext (char*) ;
 int print_set_creat_perms (int *) ;
 int print_uge_deleg_perms (int *,int ,int ,char*) ;
 int printf (char*,...) ;
 int snprintf (char*,int,char*,char*) ;
 int strlen (char*) ;
 TYPE_3__* uu_list_first (int ) ;
 TYPE_3__* uu_list_next (int ,TYPE_3__*) ;

__attribute__((used)) static void
print_fs_perms(fs_perm_set_t *fspset)
{
 fs_perm_node_t *node = ((void*)0);
 char buf[MAXNAMELEN + 32];
 const char *dsname = buf;

 for (node = uu_list_first(fspset->fsps_list); node != ((void*)0);
     node = uu_list_next(fspset->fsps_list, node)) {
  uu_avl_t *sc_avl = node->fspn_fsperm.fsp_sc_avl;
  uu_avl_t *uge_avl = node->fspn_fsperm.fsp_uge_avl;
  int left = 0;

  (void) snprintf(buf, sizeof (buf),
      gettext("---- Permissions on %s "),
      node->fspn_fsperm.fsp_name);
  (void) printf("%s", dsname);
  left = 70 - strlen(buf);
  while (left-- > 0)
   (void) printf("-");
  (void) printf("\n");

  print_set_creat_perms(sc_avl);
  print_uge_deleg_perms(uge_avl, B_TRUE, B_FALSE,
      gettext("Local permissions:\n"));
  print_uge_deleg_perms(uge_avl, B_FALSE, B_TRUE,
      gettext("Descendent permissions:\n"));
  print_uge_deleg_perms(uge_avl, B_TRUE, B_TRUE,
      gettext("Local+Descendent permissions:\n"));
 }
}
