
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SA_OK ;
 int SA_SYNTAX_ERR ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
smb_validate_shareopts(const char *shareopts)
{

 if ((strcmp(shareopts, "off") == 0) || (strcmp(shareopts, "on") == 0))
  return (SA_OK);

 return (SA_SYNTAX_ERR);
}
