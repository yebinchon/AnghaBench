
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HasSeenOneTimeMessage (char const* const) ;
 int SetSeenOneTimeMessage (char const* const) ;

int
OneTimeMessage(const char *const msg)
{
 if (HasSeenOneTimeMessage(msg))
  return (0);
 SetSeenOneTimeMessage(msg);
 return (1);
}
