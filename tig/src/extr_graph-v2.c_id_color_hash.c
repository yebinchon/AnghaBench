
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct id_color {int id; } ;
typedef int hashval_t ;


 int htab_hash_string (int ) ;

__attribute__((used)) static hashval_t
id_color_hash(const void *node)
{
 return htab_hash_string(((const struct id_color*) node)->id);
}
