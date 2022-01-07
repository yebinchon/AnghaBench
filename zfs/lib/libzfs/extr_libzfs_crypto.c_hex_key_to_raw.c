
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8_t ;


 int EINVAL ;
 int isxdigit (char) ;
 int sscanf (char*,char*,unsigned int*) ;

__attribute__((used)) static int
hex_key_to_raw(char *hex, int hexlen, uint8_t *out)
{
 int ret, i;
 unsigned int c;

 for (i = 0; i < hexlen; i += 2) {
  if (!isxdigit(hex[i]) || !isxdigit(hex[i + 1])) {
   ret = EINVAL;
   goto error;
  }

  ret = sscanf(&hex[i], "%02x", &c);
  if (ret != 1) {
   ret = EINVAL;
   goto error;
  }

  out[i / 2] = c;
 }

 return (0);

error:
 return (ret);
}
