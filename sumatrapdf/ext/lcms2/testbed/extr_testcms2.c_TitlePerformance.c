
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int printf (char*,char const*) ;
 int stdout ;

__attribute__((used)) static
void TitlePerformance(const char* Txt)
{
    printf("%-45s: ", Txt); fflush(stdout);
}
