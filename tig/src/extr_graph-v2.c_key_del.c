
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct id_color {int dummy; } ;


 int id_color_delete (struct id_color*) ;

__attribute__((used)) static void
key_del(void *key)
{
 id_color_delete((struct id_color *) key);
}
