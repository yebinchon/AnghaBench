
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (int) ;
 scalar_t__ ishex (int) ;

int jsY_ishex(int c)
{
 return isdigit(c) || ishex(c);
}
