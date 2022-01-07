
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _ismbbkalnum (unsigned int) ;
 scalar_t__ isalnum (unsigned int) ;

int _ismbbalnum(unsigned int c)
{
  return (isalnum(c) || _ismbbkalnum(c));
}
