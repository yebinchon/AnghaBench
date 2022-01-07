
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct snprintf_buffer {char* p; size_t s; size_t n; } ;


 int fz_format_string (int *,struct snprintf_buffer*,int ,char const*,int ) ;
 int snprintf_emit ;

size_t
fz_vsnprintf(char *buffer, size_t space, const char *fmt, va_list args)
{
 struct snprintf_buffer out;
 out.p = buffer;
 out.s = space > 0 ? space - 1 : 0;
 out.n = 0;


 fz_format_string(((void*)0), &out, snprintf_emit, fmt, args);
 if (space > 0)
  out.p[out.n < space ? out.n : space - 1] = '\0';

 return out.n;
}
