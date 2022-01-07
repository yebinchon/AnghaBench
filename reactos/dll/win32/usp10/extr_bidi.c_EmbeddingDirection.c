
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;


 int L ;
 int R ;
 scalar_t__ odd (int) ;

__attribute__((used)) static WORD EmbeddingDirection(int level)
{
    return odd(level) ? R : L;
}
