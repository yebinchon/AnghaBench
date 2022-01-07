
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct paste_buffer {char* name; } ;


 struct paste_buffer* RB_MIN (int ,int *) ;
 int paste_by_time ;
 int paste_time_tree ;

struct paste_buffer *
paste_get_top(const char **name)
{
 struct paste_buffer *pb;

 pb = RB_MIN(paste_time_tree, &paste_by_time);
 if (pb == ((void*)0))
  return (((void*)0));
 if (name != ((void*)0))
  *name = pb->name;
 return (pb);
}
