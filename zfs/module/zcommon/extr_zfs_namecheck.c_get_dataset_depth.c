
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
get_dataset_depth(const char *path)
{
 const char *loc = path;
 int nesting = 0;





 for (int i = 0; loc[i] != '\0' &&
     loc[i] != '@' &&
     loc[i] != '#'; i++) {
  if (loc[i] == '/')
   nesting++;
 }

 return (nesting);
}
