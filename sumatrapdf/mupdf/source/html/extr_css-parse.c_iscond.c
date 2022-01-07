
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CSS_HASH ;

__attribute__((used)) static int iscond(int t)
{
 return t == ':' || t == '.' || t == '[' || t == CSS_HASH;
}
