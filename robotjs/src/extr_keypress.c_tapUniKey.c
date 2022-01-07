
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int toggleUniKey (char,int) ;

__attribute__((used)) static void tapUniKey(char c)
{
 toggleUniKey(c, 1);
 toggleUniKey(c, 0);
}
