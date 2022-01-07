
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalpha (int) ;
 scalar_t__ isalpharune (int) ;

__attribute__((used)) static int jsY_isidentifierstart(int c)
{
 return isalpha(c) || c == '$' || c == '_' || isalpharune(c);
}
