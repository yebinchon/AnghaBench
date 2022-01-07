
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int fputc (char,int ) ;
 int fputs (char const*,int ) ;
 int stderr ;

__attribute__((used)) static void l_message(const char *pname, const char *msg)
{
  if (pname) { fputs(pname, stderr); fputc(':', stderr); fputc(' ', stderr); }
  fputs(msg, stderr); fputc('\n', stderr);
  fflush(stderr);
}
