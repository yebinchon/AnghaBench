
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sa_handle_impl_t ;
typedef int line ;
typedef int FILE ;


 int B_TRUE ;
 int ZFS_SHARETAB ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (int ,char*) ;
 int process_share (int ,int *,char*,char*,char*,char*,char*,int *,int ) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void
parse_sharetab(sa_handle_impl_t impl_handle)
{
 FILE *fp;
 char line[512];
 char *eol, *pathname, *resource, *fstype, *options, *description;

 fp = fopen(ZFS_SHARETAB, "r");

 if (fp == ((void*)0))
  return;

 while (fgets(line, sizeof (line), fp) != ((void*)0)) {
  eol = line + strlen(line) - 1;

  while (eol >= line) {
   if (*eol != '\r' && *eol != '\n')
    break;

   *eol = '\0';
   eol--;
  }

  pathname = line;

  if ((resource = strchr(pathname, '\t')) == ((void*)0))
   continue;

  *resource = '\0';
  resource++;

  if ((fstype = strchr(resource, '\t')) == ((void*)0))
   continue;

  *fstype = '\0';
  fstype++;

  if ((options = strchr(fstype, '\t')) == ((void*)0))
   continue;

  *options = '\0';
  options++;

  if ((description = strchr(fstype, '\t')) != ((void*)0)) {
   *description = '\0';
   description++;
  }

  if (strcmp(resource, "-") == 0)
   resource = ((void*)0);

  (void) process_share(impl_handle, ((void*)0), pathname, resource,
      fstype, options, description, ((void*)0), B_TRUE);
 }

 fclose(fp);
}
