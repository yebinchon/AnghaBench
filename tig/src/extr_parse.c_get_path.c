
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path_entry {char const* path; } ;


 struct path_entry* calloc (int,scalar_t__) ;
 int free (struct path_entry*) ;
 int path_cache ;
 struct path_entry* string_map_get (int *,char const*) ;
 int string_map_put (int *,char const*,struct path_entry*) ;
 scalar_t__ strlen (char const*) ;
 int strncpy (char const*,char const*,scalar_t__) ;

const char *
get_path(const char *path)
{
 struct path_entry *entry = string_map_get(&path_cache, path);

 if (!entry) {
  entry = calloc(1, sizeof(*entry) + strlen(path));
  if (!entry || !string_map_put(&path_cache, path, entry)) {
   free(entry);
   return ((void*)0);
  }
  strncpy(entry->path, path, strlen(path));
 }

 return entry->path;
}
