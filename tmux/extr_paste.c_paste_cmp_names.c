
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct paste_buffer {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
paste_cmp_names(const struct paste_buffer *a, const struct paste_buffer *b)
{
 return (strcmp(a->name, b->name));
}
