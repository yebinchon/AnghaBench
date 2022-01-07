
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int MNT_LINE_MAX ;
 unsigned long MS_REMOUNT ;
 unsigned long ZS_ZFSUTIL ;
 int free (char*) ;
 int parse_option (char*,unsigned long*,unsigned long*,int) ;
 int strcpy (char*,char*) ;
 char* strdup (char*) ;
 int strlcat (char*,char*,int ) ;

__attribute__((used)) static int
parse_options(char *mntopts, unsigned long *mntflags, unsigned long *zfsflags,
    int sloppy, char *badopt, char *mtabopt)
{
 int error = 0, quote = 0, flag = 0, count = 0;
 char *ptr, *opt, *opts;

 opts = strdup(mntopts);
 if (opts == ((void*)0))
  return (ENOMEM);

 *mntflags = 0;
 opt = ((void*)0);







 for (ptr = opts; ptr && !flag; ptr++) {
  if (opt == ((void*)0))
   opt = ptr;

  if (*ptr == '"')
   quote = !quote;

  if (quote)
   continue;

  if (*ptr == '\0')
   flag = 1;

  if ((*ptr == ',') || (*ptr == '\0')) {
   *ptr = '\0';

   error = parse_option(opt, mntflags, zfsflags, sloppy);
   if (error) {
    strcpy(badopt, opt);
    goto out;

   }

   if (!(*mntflags & MS_REMOUNT) &&
       !(*zfsflags & ZS_ZFSUTIL)) {
    if (count > 0)
     strlcat(mtabopt, ",", MNT_LINE_MAX);

    strlcat(mtabopt, opt, MNT_LINE_MAX);
    count++;
   }

   opt = ((void*)0);
  }
 }

out:
 free(opts);
 return (error);
}
