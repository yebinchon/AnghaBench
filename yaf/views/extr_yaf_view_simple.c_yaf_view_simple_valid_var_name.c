
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int yaf_view_simple_valid_var_name(char *var_name, int len)
{
 int i, ch;

 if (!var_name)
  return 0;


 ch = (int)((unsigned char *)var_name)[0];
 if (var_name[0] != '_' &&
   (ch < 65 || ch > 90) &&
   (ch < 97 || ch > 122) &&
   (ch < 127 || ch > 255)
    ) {
  return 0;
 }


 if (len > 1) {
  for (i = 1; i < len; i++) {
   ch = (int)((unsigned char *)var_name)[i];
   if (var_name[i] != '_' &&
     (ch < 48 || ch > 57) &&
     (ch < 65 || ch > 90) &&
     (ch < 97 || ch > 122) &&
     (ch < 127 || ch > 255)
      ) {
    return 0;
   }
  }
 }
 return 1;
}
