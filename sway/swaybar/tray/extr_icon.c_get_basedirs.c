
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {char** we_wordv; } ;
typedef TYPE_1__ wordexp_t ;
struct TYPE_10__ {int length; int * items; } ;
typedef TYPE_2__ list_t ;


 int WRDE_UNDEF ;
 TYPE_2__* create_list () ;
 scalar_t__ dir_exists (char*) ;
 int free (char*) ;
 char* getenv (char*) ;
 int list_add (TYPE_2__*,char*) ;
 int list_free_items_and_destroy (TYPE_2__*) ;
 char* malloc (size_t) ;
 int snprintf (char*,size_t,char*,char*) ;
 char* strdup (char*) ;
 char* strtok (char*,char*) ;
 scalar_t__ wordexp (int ,TYPE_1__*,int ) ;
 int wordfree (TYPE_1__*) ;

__attribute__((used)) static list_t *get_basedirs(void) {
 list_t *basedirs = create_list();
 list_add(basedirs, strdup("$HOME/.icons"));

 char *data_home = getenv("XDG_DATA_HOME");
 list_add(basedirs, strdup(data_home && *data_home ?
   "$XDG_DATA_HOME/icons" : "$HOME/.local/share/icons"));

 list_add(basedirs, strdup("/usr/share/pixmaps"));

 char *data_dirs = getenv("XDG_DATA_DIRS");
 if (!(data_dirs && *data_dirs)) {
  data_dirs = "/usr/local/share:/usr/share";
 }
 data_dirs = strdup(data_dirs);
 char *dir = strtok(data_dirs, ":");
 do {
  size_t path_len = snprintf(((void*)0), 0, "%s/icons", dir) + 1;
  char *path = malloc(path_len);
  snprintf(path, path_len, "%s/icons", dir);
  list_add(basedirs, path);
 } while ((dir = strtok(((void*)0), ":")));
 free(data_dirs);

 list_t *basedirs_expanded = create_list();
 for (int i = 0; i < basedirs->length; ++i) {
  wordexp_t p;
  if (wordexp(basedirs->items[i], &p, WRDE_UNDEF) == 0) {
   if (dir_exists(p.we_wordv[0])) {
    list_add(basedirs_expanded, strdup(p.we_wordv[0]));
   }
   wordfree(&p);
  }
 }

 list_free_items_and_destroy(basedirs);

 return basedirs_expanded;
}
