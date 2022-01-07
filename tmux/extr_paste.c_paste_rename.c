
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct paste_buffer {scalar_t__ automatic; void* name; } ;


 int RB_INSERT (int ,int *,struct paste_buffer*) ;
 int RB_REMOVE (int ,int *,struct paste_buffer*) ;
 int free (void*) ;
 int paste_by_name ;
 struct paste_buffer* paste_get_name (char const*) ;
 int paste_name_tree ;
 int paste_num_automatic ;
 int xasprintf (char**,char*,char const*) ;
 void* xstrdup (char const*) ;

int
paste_rename(const char *oldname, const char *newname, char **cause)
{
 struct paste_buffer *pb, *pb_new;

 if (cause != ((void*)0))
  *cause = ((void*)0);

 if (oldname == ((void*)0) || *oldname == '\0') {
  if (cause != ((void*)0))
   *cause = xstrdup("no buffer");
  return (-1);
 }
 if (newname == ((void*)0) || *newname == '\0') {
  if (cause != ((void*)0))
   *cause = xstrdup("new name is empty");
  return (-1);
 }

 pb = paste_get_name(oldname);
 if (pb == ((void*)0)) {
  if (cause != ((void*)0))
   xasprintf(cause, "no buffer %s", oldname);
  return (-1);
 }

 pb_new = paste_get_name(newname);
 if (pb_new != ((void*)0)) {
  if (cause != ((void*)0))
   xasprintf(cause, "buffer %s already exists", newname);
  return (-1);
 }

 RB_REMOVE(paste_name_tree, &paste_by_name, pb);

 free(pb->name);
 pb->name = xstrdup(newname);

 if (pb->automatic)
  paste_num_automatic--;
 pb->automatic = 0;

 RB_INSERT(paste_name_tree, &paste_by_name, pb);

 return (0);
}
