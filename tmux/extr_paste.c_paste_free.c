
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct paste_buffer {struct paste_buffer* name; struct paste_buffer* data; scalar_t__ automatic; } ;


 int RB_REMOVE (int ,int *,struct paste_buffer*) ;
 int free (struct paste_buffer*) ;
 int paste_by_name ;
 int paste_by_time ;
 int paste_name_tree ;
 int paste_num_automatic ;
 int paste_time_tree ;

void
paste_free(struct paste_buffer *pb)
{
 RB_REMOVE(paste_name_tree, &paste_by_name, pb);
 RB_REMOVE(paste_time_tree, &paste_by_time, pb);
 if (pb->automatic)
  paste_num_automatic--;

 free(pb->data);
 free(pb->name);
 free(pb);
}
