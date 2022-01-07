
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* _u2l ;

__attribute__((used)) static inline short ulaw2linear(unsigned char u_val)
{
    return (short)_u2l[u_val];
}
