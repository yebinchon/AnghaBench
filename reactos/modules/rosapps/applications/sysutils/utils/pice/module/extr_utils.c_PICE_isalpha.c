
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int PICE_isalpha( int c )
{
 return ((c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z'));
}
