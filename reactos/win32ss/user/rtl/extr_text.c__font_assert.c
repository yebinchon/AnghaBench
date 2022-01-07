
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int ) ;
 int DbgPrint (char*,char const*,int,char const*) ;
 int ExitProcess (int) ;
 int FALSE ;

void _font_assert(const char *msg, const char *file, int line)
{

  DbgPrint("Assertion failed at %s line %d: %s\n", file, line, msg);



  ExitProcess(3);
  for(;;);

}
