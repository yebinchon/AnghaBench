
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int start; } ;
typedef TYPE_1__ BracketPair ;



__attribute__((used)) static int compr(const void *a, const void* b)
{
    return ((BracketPair*)a)->start - ((BracketPair*)b)->start;
}
