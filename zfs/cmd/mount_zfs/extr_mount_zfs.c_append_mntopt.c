
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ boolean_t ;


 int MNT_LINE_MAX ;
 int snprintf (char*,int,char*,char const*,char const*) ;
 int strlcat (char*,char*,int) ;

__attribute__((used)) static void
append_mntopt(const char *name, const char *val, char *mntopts,
    char *mtabopt, boolean_t quote)
{
 char tmp[MNT_LINE_MAX];

 snprintf(tmp, MNT_LINE_MAX, quote ? ",%s=\"%s\"" : ",%s=%s", name, val);

 if (mntopts)
  strlcat(mntopts, tmp, MNT_LINE_MAX);

 if (mtabopt)
  strlcat(mtabopt, tmp, MNT_LINE_MAX);
}
