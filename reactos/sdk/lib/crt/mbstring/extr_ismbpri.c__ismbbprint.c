
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _ismbbkana (unsigned int) ;
 scalar_t__ isprint (unsigned int) ;

int _ismbbprint(unsigned int c)
{
  return (isprint(c) || _ismbbkana(c));
}
