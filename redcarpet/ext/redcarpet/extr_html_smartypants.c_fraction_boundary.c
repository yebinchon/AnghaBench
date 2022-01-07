
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;


 scalar_t__ ispunct (char) ;
 scalar_t__ isspace (char) ;

__attribute__((used)) static inline int
fraction_boundary(uint8_t c)
{
 return c == 0 || isspace(c) || (c != '/' && ispunct(c));
}
