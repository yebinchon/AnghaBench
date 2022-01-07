
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isleadbyte (unsigned char) ;

int mblen( const char *str, size_t size )
{
  if (str && *str && size)
  {
    return !isleadbyte((unsigned char)*str) ? 1 : (size>1 ? 2 : -1);
  }
  return 0;
}
