
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcasecmp (char const*,char const*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 char* strrchr (char const*,char) ;
 char* xmalloc (int) ;

char *dup_basename(const char *name, const char *ext)
{
 int namelen;
 int extlen = strlen(ext);
 char *base;
 char *slash;

 if(!name)
  name = "widl.tab";

 slash = strrchr(name, '/');
 if (!slash)
  slash = strrchr(name, '\\');

 if (slash)
  name = slash + 1;

 namelen = strlen(name);


 base = xmalloc(namelen +6 +1);
 strcpy(base, name);
 if(!strcasecmp(name + namelen-extlen, ext))
 {
  base[namelen - extlen] = '\0';
 }
 return base;
}
