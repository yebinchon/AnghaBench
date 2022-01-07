
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ ispunct (scalar_t__) ;
 scalar_t__ isspace (scalar_t__) ;

__attribute__((used)) static inline int
word_boundary(uint8_t c)
{
 return c == 0 || isspace(c) || ispunct(c);
}
