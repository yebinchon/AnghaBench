
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct StringHashTable {unsigned int TableSize; struct StringEntry** Table; } ;
struct StringEntry {int Offset; struct StringEntry* Next; int String; } ;
typedef int ULONG ;


 int AddStringToHash (struct StringHashTable*,unsigned int,int,char*) ;
 unsigned int ComputeDJBHash (char*) ;
 scalar_t__ strcmp (int ,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static ULONG
FindOrAddString(struct StringHashTable *StringTable,
                char *StringToFind,
                ULONG *StringsLength,
                void *StringsBase)
{
    unsigned int hash = ComputeDJBHash(StringToFind) % StringTable->TableSize;
    struct StringEntry *entry = StringTable->Table[hash];

    while (entry && strcmp(entry->String, StringToFind))
        entry = entry->Next;

    if (entry)
    {
        return entry->Offset;
    }
    else
    {
        char *End = (char *)StringsBase + *StringsLength;

        strcpy(End, StringToFind);
        *StringsLength += strlen(StringToFind) + 1;

        AddStringToHash(StringTable, hash, End - (char *)StringsBase, End);

        return End - (char *)StringsBase;
    }
}
