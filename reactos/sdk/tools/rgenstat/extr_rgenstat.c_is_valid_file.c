
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext ;


 int MAX_PATH ;
 int memset (char*,int ,int) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static int
is_valid_file(char *filename)
{
  char ext[MAX_PATH];
  int i;

  i = strlen(filename);
  while (i > 0 && filename[i] != '.')
    {
      i--;
    }
  if (i > 0)
    {
      memset(ext, 0, sizeof(ext));
      strncpy(&ext[0], &filename[i], strlen(&filename[i]));

      if ((strncmp(ext, ".c", 2) == 0) || (strncmp(ext, ".C", 2) == 0))
        {
          return 1;
        }
    }
  return 0;
}
