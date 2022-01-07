
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char* strdup (char*) ;
 int strlcpy (char*,char*,scalar_t__) ;
 scalar_t__ strlen (char*) ;
 char* strrchr (char*,char) ;
 char* zfs_strip_partition (char*) ;

__attribute__((used)) static char *
zfs_strip_partition_path(char *path)
{
 char *newpath = strdup(path);
 char *sd_offset;
 char *new_sd;

 if (!newpath)
  return (((void*)0));


 sd_offset = strrchr(newpath, '/') + 1;


 new_sd = zfs_strip_partition(sd_offset);
 if (!new_sd) {
  free(newpath);
  return (((void*)0));
 }


 strlcpy(sd_offset, new_sd, strlen(sd_offset) + 1);


 free(new_sd);

 return (newpath);
}
