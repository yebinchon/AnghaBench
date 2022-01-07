
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int fputc (char,int ) ;
 int fputs (char*,int ) ;
 int stderr ;
 char* tag ;

__attribute__((used)) static int
textTag (va_list ap)
{
    fputs ("Tag: ", stderr);
    fputs (tag, stderr);
    fputc ('\n', stderr);
    return 0;
}
