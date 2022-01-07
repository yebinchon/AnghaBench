
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX ;
 int convert_to_accel_path (char*,char*,size_t) ;
 int filename ;
 int realpath (int ,char*) ;

__attribute__((used)) static int get_accelerator_filename(char outname[], size_t len)
{
 char absname[PATH_MAX];
 if (!realpath(filename, absname))
  return 0;
 if (!convert_to_accel_path(outname, absname, len))
  return 0;
 return 1;
}
