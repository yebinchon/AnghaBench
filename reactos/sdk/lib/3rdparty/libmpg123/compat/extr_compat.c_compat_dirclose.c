
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compat_dir {int dir; int ffn; struct compat_dir* path; } ;


 int FindClose (int ) ;
 int closedir (int ) ;
 int free (struct compat_dir*) ;

void compat_dirclose(struct compat_dir *cd)
{
 if(cd)
 {
  free(cd->path);



  closedir(cd->dir);

  free(cd);
 }
}
