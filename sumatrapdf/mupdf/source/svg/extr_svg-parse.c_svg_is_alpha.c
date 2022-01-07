
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int svg_is_alpha(int c)
{
 return (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z');
}
