
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalpharune (int) ;

__attribute__((used)) static int isunicodeletter(int c)
{
 return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || isalpharune(c);
}
