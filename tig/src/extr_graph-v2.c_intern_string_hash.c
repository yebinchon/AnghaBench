
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hashval_t ;


 int htab_hash_string (char const*) ;

__attribute__((used)) static hashval_t
intern_string_hash(const void *node)
{
 return htab_hash_string((const char *) node);
}
