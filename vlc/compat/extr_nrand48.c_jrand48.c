
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 scalar_t__ iterate48 (unsigned short*) ;

long jrand48 (unsigned short subi[3])
{
    return ((int64_t)iterate48 (subi)) >> 16;
}
