
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct id_color {int id; } ;


 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int
id_color_eq(const void *entry, const void *element)
{
 return strcmp(((const struct id_color *) entry)->id, ((const struct id_color *) element)->id) == 0;
}
