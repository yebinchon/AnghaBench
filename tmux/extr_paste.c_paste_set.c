
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct paste_buffer {char* data; size_t size; int created; scalar_t__ order; scalar_t__ automatic; void* name; } ;


 int RB_INSERT (int ,int *,struct paste_buffer*) ;
 int free (char*) ;
 int paste_add (int *,char*,size_t) ;
 int paste_by_name ;
 int paste_by_time ;
 int paste_free (struct paste_buffer*) ;
 struct paste_buffer* paste_get_name (char const*) ;
 int paste_name_tree ;
 int paste_next_order ;
 int paste_time_tree ;
 int time (int *) ;
 struct paste_buffer* xmalloc (int) ;
 void* xstrdup (char const*) ;

int
paste_set(char *data, size_t size, const char *name, char **cause)
{
 struct paste_buffer *pb, *old;

 if (cause != ((void*)0))
  *cause = ((void*)0);

 if (size == 0) {
  free(data);
  return (0);
 }
 if (name == ((void*)0)) {
  paste_add(((void*)0), data, size);
  return (0);
 }

 if (*name == '\0') {
  if (cause != ((void*)0))
   *cause = xstrdup("empty buffer name");
  return (-1);
 }

 pb = xmalloc(sizeof *pb);

 pb->name = xstrdup(name);

 pb->data = data;
 pb->size = size;

 pb->automatic = 0;
 pb->order = paste_next_order++;

 pb->created = time(((void*)0));

 if ((old = paste_get_name(name)) != ((void*)0))
  paste_free(old);

 RB_INSERT(paste_name_tree, &paste_by_name, pb);
 RB_INSERT(paste_time_tree, &paste_by_time, pb);

 return (0);
}
