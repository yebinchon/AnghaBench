
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* remote; } ;


 int STRING_SIZE (char*) ;
 int prefixcmp (char const*,char*) ;
 TYPE_1__ repo ;
 int strcmp (char const*,char*) ;
 int string_format_from (scalar_t__*,size_t*,char*,char const*) ;
 int string_ncopy (scalar_t__*,char const*,size_t) ;
 size_t strlen (scalar_t__*) ;

__attribute__((used)) static void
set_remote_branch(const char *name, const char *value, size_t valuelen)
{
 if (!strcmp(name, ".remote")) {
  string_ncopy(repo.remote, value, valuelen);

 } else if (*repo.remote && !strcmp(name, ".merge")) {
  size_t from = strlen(repo.remote);

  if (!prefixcmp(value, "refs/heads/"))
   value += STRING_SIZE("refs/heads/");

  if (!string_format_from(repo.remote, &from, "/%s", value))
   repo.remote[0] = 0;
 }
}
