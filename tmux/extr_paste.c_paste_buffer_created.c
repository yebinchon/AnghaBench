
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct paste_buffer {int created; } ;



time_t
paste_buffer_created(struct paste_buffer *pb)
{
 return (pb->created);
}
