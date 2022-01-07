
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* sa_share_impl_t ;
typedef int line ;
typedef int boolean_t ;
struct TYPE_3__ {int sharepath; } ;
typedef int FILE ;


 int B_FALSE ;
 int B_TRUE ;
 int SEEK_SET ;
 int dup (int ) ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int * fgets (char*,int,int *) ;
 scalar_t__ fseek (int *,int ,int ) ;
 int nfs_available () ;
 int nfs_exportfs_temp_fd ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static boolean_t
nfs_is_share_active(sa_share_impl_t impl_share)
{
 int fd;
 char line[512];
 char *tab, *cur;
 FILE *nfs_exportfs_temp_fp;

 if (!nfs_available())
  return (B_FALSE);

 if ((fd = dup(nfs_exportfs_temp_fd)) == -1)
  return (B_FALSE);

 nfs_exportfs_temp_fp = fdopen(fd, "r");

 if (nfs_exportfs_temp_fp == ((void*)0))
  return (B_FALSE);

 if (fseek(nfs_exportfs_temp_fp, 0, SEEK_SET) < 0) {
  fclose(nfs_exportfs_temp_fp);
  return (B_FALSE);
 }

 while (fgets(line, sizeof (line), nfs_exportfs_temp_fp) != ((void*)0)) {






  if (line[0] == '\t')
   continue;

  tab = strchr(line, '\t');

  if (tab != ((void*)0)) {
   *tab = '\0';
   cur = tab - 1;
  } else {






   cur = line + strlen(line) - 1;
  }


  while (cur >= line && (*cur == ' ' || *cur == '\n'))
   *cur-- = '\0';

  if (strcmp(line, impl_share->sharepath) == 0) {
   fclose(nfs_exportfs_temp_fp);
   return (B_TRUE);
  }
 }

 fclose(nfs_exportfs_temp_fp);

 return (B_FALSE);
}
