
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _ismbclower (unsigned int) ;
 scalar_t__ _ismbcupper (unsigned int) ;

int _ismbcalpha( unsigned int c )
{
 return (_ismbcupper (c) || _ismbclower (c));
}
