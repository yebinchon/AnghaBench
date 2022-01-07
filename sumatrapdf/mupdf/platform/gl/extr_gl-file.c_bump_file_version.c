
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int text; } ;
struct TYPE_4__ {TYPE_1__ input_file; } ;


 int PATH_MAX ;
 int atoi (char*) ;
 TYPE_2__ fc ;
 int fz_snprintf (char*,int,char*,char*,int,char*) ;
 int fz_strlcpy (char*,int ,int) ;
 int memcpy (char*,char*,int) ;
 char* strrchr (char*,char) ;
 int ui_input_init (TYPE_1__*,char*) ;

__attribute__((used)) static void bump_file_version(int dir)
{
 char buf[PATH_MAX], *p, *n;
 char base[PATH_MAX], out[PATH_MAX];
 int x;
 fz_strlcpy(buf, fc.input_file.text, sizeof buf);
 p = strrchr(buf, '.');
 if (p)
 {
  n = p;
  while (n > buf && n[-1] >= '0' && n[-1] <= '9')
   --n;
  if (n != p)
   x = atoi(n) + dir;
  else
   x = dir;
  memcpy(base, buf, n-buf);
  base[n-buf] = 0;
  fz_snprintf(out, sizeof out, "%s%d%s", base, x, p);
  ui_input_init(&fc.input_file, out);
 }
}
