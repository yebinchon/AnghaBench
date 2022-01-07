
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int key_code ;


 int KEYC_CTRL ;
 int KEYC_ESCAPE ;
 int KEYC_SHIFT ;

__attribute__((used)) static int
xterm_keys_modifiers(const char *buf, size_t len, size_t *pos,
    key_code *modifiers)
{
 u_int flags;

 if (len - *pos < 2)
  return (1);

 if (buf[*pos] < '0' || buf[*pos] > '9')
  return (-1);
 flags = buf[(*pos)++] - '0';
 if (buf[*pos] >= '0' && buf[*pos] <= '9')
  flags = (flags * 10) + (buf[(*pos)++] - '0');
 flags -= 1;

 *modifiers = 0;
 if (flags & 1)
  *modifiers |= KEYC_SHIFT;
 if (flags & 2)
  *modifiers |= KEYC_ESCAPE;
 if (flags & 4)
  *modifiers |= KEYC_CTRL;
 if (flags & 8)
  *modifiers |= KEYC_ESCAPE;
 return (0);
}
