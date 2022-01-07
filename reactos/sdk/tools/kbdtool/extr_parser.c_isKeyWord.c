
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ULONG ;
typedef int PCHAR ;


 size_t KEYWORD_COUNT ;
 int * KeyWordList ;
 scalar_t__ strcmp (int ,int ) ;

ULONG
isKeyWord(PCHAR p)
{
    ULONG i;


    for (i = 0; i < KEYWORD_COUNT; i++) if (strcmp(KeyWordList[i], p) == 0) break;


    return i;
}
