
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct paste_buffer {char const* name; } ;



const char *
paste_buffer_name(struct paste_buffer *pb)
{
 return (pb->name);
}
