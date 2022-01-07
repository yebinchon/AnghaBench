
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _MBGETH (unsigned int) ;
 int _MBGETL (unsigned int) ;
 scalar_t__ _ismbblead (int ) ;
 scalar_t__ _ismbbtrail (int ) ;

int _ismbclegal(unsigned int c)
{
 return (_ismbblead (_MBGETH (c)) && _ismbbtrail (_MBGETL (c)));
}
