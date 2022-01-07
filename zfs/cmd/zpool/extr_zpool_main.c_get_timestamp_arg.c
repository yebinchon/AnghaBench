
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B_FALSE ;
 int DDATE ;
 int UDATE ;
 int timestamp_fmt ;
 int usage (int ) ;

__attribute__((used)) static void
get_timestamp_arg(char c)
{
 if (c == 'u')
  timestamp_fmt = UDATE;
 else if (c == 'd')
  timestamp_fmt = DDATE;
 else
  usage(B_FALSE);
}
