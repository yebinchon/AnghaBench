
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef scalar_t__ cdio_log_level_t ;
typedef int buf ;


 int _handler (scalar_t__,char*) ;
 int assert (int ) ;
 scalar_t__ cdio_loglevel_default ;
 int vsnprintf (char*,int,char const*,int ) ;

__attribute__((used)) static void
cdio_logv(cdio_log_level_t level, const char format[], va_list args)
{
  char buf[1024] = { 0, };
 static int in_recursion = 0;

  if (level < cdio_loglevel_default) return;

  if (in_recursion) {

    assert(0);
  }

  in_recursion = 1;

  vsnprintf(buf, sizeof(buf)-1, format, args);

  _handler(level, buf);

  in_recursion = 0;
}
