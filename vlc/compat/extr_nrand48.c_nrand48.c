
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iterate48 (unsigned short*) ;

long nrand48 (unsigned short subi[3])
{
    return iterate48 (subi) >> 17;
}
