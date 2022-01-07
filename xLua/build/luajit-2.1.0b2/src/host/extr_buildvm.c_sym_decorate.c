
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mode; } ;
typedef TYPE_1__ BuildCtx ;


 scalar_t__ BUILD_coffasm ;
 scalar_t__ BUILD_elfasm ;
 scalar_t__ BUILD_machasm ;
 scalar_t__ BUILD_peobj ;
 int LJ_64 ;
 scalar_t__ malloc (scalar_t__) ;
 int sprintf (char*,char*,char const*,char const*,char const*) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static const char *sym_decorate(BuildCtx *ctx,
    const char *prefix, const char *suffix)
{
  char name[256];
  char *p;





  const char *symprefix = ctx->mode != BUILD_elfasm ? "_" : "";

  sprintf(name, "%s%s%s", symprefix, prefix, suffix);
  p = strchr(name, '@');
  if (p) {
    *p = '\0';

  }
  p = (char *)malloc(strlen(name)+1);
  strcpy(p, name);
  return p;
}
