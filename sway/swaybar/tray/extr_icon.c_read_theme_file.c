
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icon_theme {void* dir; int subdirs; } ;
typedef int ssize_t ;
typedef int FILE ;


 struct icon_theme* calloc (int,int) ;
 int create_list () ;
 int destroy_theme (struct icon_theme*) ;
 int entry_handler (char*,char*,char*,struct icon_theme*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 int group_handler (char*,char*,struct icon_theme*) ;
 scalar_t__ isalnum (char) ;
 int iscntrl (char) ;
 scalar_t__ isspace (char) ;
 char* malloc (size_t) ;
 int snprintf (char*,size_t,char*,char*,char*) ;
 void* strdup (char*) ;
 scalar_t__ validate_icon_theme (struct icon_theme*) ;

__attribute__((used)) static struct icon_theme *read_theme_file(char *basedir, char *theme_name) {

 size_t path_len = snprintf(((void*)0), 0, "%s/%s/index.theme", basedir,
   theme_name) + 1;
 char *path = malloc(path_len);
 if (!path) {
  return ((void*)0);
 }
 snprintf(path, path_len, "%s/%s/index.theme", basedir, theme_name);
 FILE *theme_file = fopen(path, "r");
 free(path);
 if (!theme_file) {
  return ((void*)0);
 }

 struct icon_theme *theme = calloc(1, sizeof(struct icon_theme));
 if (!theme) {
  fclose(theme_file);
  return ((void*)0);
 }
 theme->subdirs = create_list();

 bool error = 0;
 char *group = ((void*)0);
 char *full_line = ((void*)0);
 size_t full_len = 0;
 ssize_t nread;
 while ((nread = getline(&full_line, &full_len, theme_file)) != -1) {
  char *line = full_line - 1;
  while (isspace(*++line)) {}
  if (!*line || line[0] == '#') continue;

  int len = nread - (line - full_line);
  while (isspace(line[--len])) {}
  line[++len] = '\0';

  if (line[0] == '[') {

   if (line[--len] != ']') {
    error = 1;
    break;
   }
   int i = 1;
   for (; !iscntrl(line[i]) && line[i] != '[' && line[i] != ']'; ++i) {}
   if (i < len) {
    error = 1;
    break;
   }


   line[len] = '\0';
   error = group_handler(group, &line[1], theme);
   if (error) {
    break;
   }
   free(group);
   group = strdup(&line[1]);
  } else {
   if (!group) {
    error = 1;
    break;
   }

   int eok = 0;
   for (; isalnum(line[eok]) || line[eok] == '-'; ++eok) {}
   int i = eok - 1;
   while (isspace(line[++i])) {}
   if (line[i] != '=') {
    error = 1;
    break;
   }

   line[eok] = '\0';
   char *value = &line[i];
   while (isspace(*++value)) {}

   error = entry_handler(group, line, value, theme);
   if (error) {
    break;
   }
  }
 }

 if (!error && group) {
  error = group_handler(group, ((void*)0), theme);
 }

 free(group);
 free(full_line);
 fclose(theme_file);

 if (!error && validate_icon_theme(theme)) {
  theme->dir = strdup(theme_name);
  return theme;
 } else {
  destroy_theme(theme);
  return ((void*)0);
 }
}
