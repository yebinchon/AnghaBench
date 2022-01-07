
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WORD ;


 scalar_t__ B ;
 scalar_t__ BN ;

__attribute__((used)) static int resolveParagraphs(WORD *types, int cch)
{

    int ich = 0;
    for(; ich < cch && types[ich] != B; ich++);

    if (ich < cch && types[ich] == B)
        types[ich++] = BN;
    return ich;
}
