
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputs (char const*,int ) ;
 int stdout ;

__attribute__((used)) static void ps(const char *s)
{
 fputs(s, stdout);
}
