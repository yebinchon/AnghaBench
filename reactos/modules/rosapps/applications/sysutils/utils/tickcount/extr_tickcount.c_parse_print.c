
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_ ;
typedef int _TCHAR ;


 int _T (char) ;
 int _puttc (int ,int ) ;
 int _ttoi64 (int const*) ;
 int print_uptime (int ,int ,int *,int ) ;
 int stdout ;

int parse_print(const _TCHAR * str)
{
 int64_ tickcount;

 tickcount = _ttoi64(str);

 if(tickcount < 0)
  tickcount = - tickcount;
 else if(tickcount == 0)
  return 1;

 print_uptime(tickcount, 0, ((void*)0), 0);
 _puttc(_T('\n'), stdout);

 return 0;
}
