
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct paste_buffer {int dummy; } ;


 struct paste_buffer* RB_MIN (int ,int *) ;
 struct paste_buffer* RB_NEXT (int ,int *,struct paste_buffer*) ;
 int paste_by_time ;
 int paste_time_tree ;

struct paste_buffer *
paste_walk(struct paste_buffer *pb)
{
 if (pb == ((void*)0))
  return (RB_MIN(paste_time_tree, &paste_by_time));
 return (RB_NEXT(paste_time_tree, &paste_by_time, pb));
}
