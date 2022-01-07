
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_4__ {int EntryNumber; } ;


 int DoEntry (int ,TYPE_1__*,int *) ;
 size_t _countof (TYPE_1__*) ;
 TYPE_1__* s_Entries ;

__attribute__((used)) static void Test_PathFindOnPathW(void)
{
    UINT i;

    for (i = 0; i < _countof(s_Entries); ++i)
    {
        DoEntry(s_Entries[i].EntryNumber, &s_Entries[i], ((void*)0));
    }
}
