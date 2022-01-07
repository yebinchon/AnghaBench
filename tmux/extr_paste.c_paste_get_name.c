
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct paste_buffer {char* name; } ;


 struct paste_buffer* RB_FIND (int ,int *,struct paste_buffer*) ;
 int paste_by_name ;
 int paste_name_tree ;

struct paste_buffer *
paste_get_name(const char *name)
{
 struct paste_buffer pbfind;

 if (name == ((void*)0) || *name == '\0')
  return (((void*)0));

 pbfind.name = (char *)name;
 return (RB_FIND(paste_name_tree, &paste_by_name, &pbfind));
}
