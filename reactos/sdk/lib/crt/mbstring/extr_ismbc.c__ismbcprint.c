
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _MBHMASK (unsigned int) ;
 scalar_t__ _ismbbkana (unsigned int) ;
 int _ismbclegal (unsigned int) ;
 scalar_t__ isprint (unsigned int) ;

int _ismbcprint( unsigned int c )
{
    return (_MBHMASK (c) ? _ismbclegal (c) : (isprint (c) || _ismbbkana (c)));
}
