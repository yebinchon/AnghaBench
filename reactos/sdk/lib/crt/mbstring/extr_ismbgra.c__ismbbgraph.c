
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _ismbbkana (unsigned int) ;
 scalar_t__ isgraph (unsigned int) ;

int _ismbbgraph(unsigned int c)
{
  return (isgraph(c) || _ismbbkana(c));
}
