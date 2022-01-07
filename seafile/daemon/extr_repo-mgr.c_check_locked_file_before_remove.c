
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;
typedef int LockedFileSet ;
typedef int LockedFile ;


 int FALSE ;
 int TRUE ;
 int * locked_file_set_lookup (int *,char const*) ;

__attribute__((used)) static gboolean
check_locked_file_before_remove (LockedFileSet *fset, const char *path)
{
    return TRUE;

}
