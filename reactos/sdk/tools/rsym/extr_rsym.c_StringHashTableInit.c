
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct StringHashTable {int TableSize; int Table; } ;
struct StringEntry {int dummy; } ;
typedef int ULONG ;


 int AddStringToHash (struct StringHashTable*,int,int,char*) ;
 int ComputeDJBHash (char*) ;
 int calloc (int,int) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void
StringHashTableInit(struct StringHashTable *StringTable,
                    ULONG StringsLength,
                    char *StringsBase)
{
    char *Start = StringsBase;
    char *End = StringsBase + StringsLength;
    StringTable->TableSize = 1024;
    StringTable->Table = calloc(1024, sizeof(struct StringEntry *));
    while (Start < End)
    {
        AddStringToHash(StringTable,
                        ComputeDJBHash(Start) % StringTable->TableSize,
                        Start - StringsBase,
                        Start);
        Start += strlen(Start) + 1;
    }
}
