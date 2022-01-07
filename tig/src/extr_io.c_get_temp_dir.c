
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char*) ;

const char *
get_temp_dir(void)
{
 static const char *tmp;

 if (tmp)
  return tmp;

 if (!tmp)
  tmp = getenv("TMPDIR");
 if (!tmp)
  tmp = getenv("TEMP");
 if (!tmp)
  tmp = getenv("TMP");
 if (!tmp)
  tmp = "/tmp";

 return tmp;
}
