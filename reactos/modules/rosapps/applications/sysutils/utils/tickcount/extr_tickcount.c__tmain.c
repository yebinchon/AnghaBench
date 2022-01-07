
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_ ;
typedef scalar_t__ _TCHAR ;


 scalar_t__ GetTickCount () ;
 scalar_t__ _T (char) ;
 scalar_t__* _fgetts (scalar_t__*,int,int ) ;
 int _puttc (scalar_t__,int ) ;
 int feof (int ) ;
 int parse_print (scalar_t__*) ;
 int print_uptime (int ,int ,int *,int ) ;
 int stdin ;
 int stdout ;

int _tmain(int argc, _TCHAR * argv[])
{
 int r;

 if(argc <= 1)
 {
  print_uptime((uint64_)GetTickCount(), 0, ((void*)0), 0);
  _puttc(_T('\n'), stdout);
 }
 else if(argc == 2 && argv[1][0] == _T('-') && argv[1][1] == 0)
 {
  while(!feof(stdin))
  {
   _TCHAR buf[23];
   _TCHAR * str;

   str = _fgetts(buf, 22, stdin);

   if(str == ((void*)0))
    return 0;

   if((r = parse_print(str)) != 0)
    return r;
  }
 }
 else
 {
  int i;

  for(i = 1; i < argc; ++ i)
   if((r = parse_print(argv[i])) != 0)
    return r;
 }

 return 0;
}
