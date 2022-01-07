
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PICE_isdigit (int) ;

int PICE_isxdigit( int c )
{
 return (PICE_isdigit(c) || ((c>=0x41) && (c<=0x46)) || ((c>=0x61) && (c<=0x66)));
}
