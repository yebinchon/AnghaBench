
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int from; } ;
typedef TYPE_1__ BracketPair ;



__attribute__((used)) static int compare_bp(const void *a, const void *b)
{
 BracketPair *bpa = (BracketPair *)a;
 BracketPair *bpb = (BracketPair *)b;
 return bpa->from - bpb->from;
}
