
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalnum (int) ;

__attribute__((used)) static inline int
_isalnum(int c)
{
 return isalnum(c) && c < 0x7f;
}
