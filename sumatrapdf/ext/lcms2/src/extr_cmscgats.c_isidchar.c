
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsBool ;


 scalar_t__ isalnum (int) ;
 scalar_t__ ismiddle (int) ;

__attribute__((used)) static
cmsBool isidchar(int c)
{
   return isalnum(c) || ismiddle(c);
}
