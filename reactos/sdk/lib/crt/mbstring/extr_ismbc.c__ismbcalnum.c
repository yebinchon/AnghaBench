
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ismbbalnum (unsigned int) ;

int _ismbcalnum( unsigned int c )
{
 if ((c & 0xFF00) != 0) {

  return 0;
 }
 else
  return _ismbbalnum(c);

 return 0;
}
