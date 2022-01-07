
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* _a2l ;

__attribute__((used)) static inline int
alaw2linear(unsigned char a_val)
{
    return (short)_a2l[a_val];
}
