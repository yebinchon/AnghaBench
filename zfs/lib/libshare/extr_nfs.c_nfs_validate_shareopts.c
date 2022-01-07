
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SA_OK ;
 int free (char*) ;
 int get_linux_shareopts (char const*,char**) ;

__attribute__((used)) static int
nfs_validate_shareopts(const char *shareopts)
{
 char *linux_opts;
 int rc;

 rc = get_linux_shareopts(shareopts, &linux_opts);

 if (rc != SA_OK)
  return (rc);

 free(linux_opts);

 return (SA_OK);
}
