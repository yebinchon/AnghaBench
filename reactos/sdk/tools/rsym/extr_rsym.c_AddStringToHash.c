
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct StringHashTable {struct StringEntry** Table; } ;
struct StringEntry {char* String; struct StringEntry* Next; int Offset; } ;
typedef int ULONG ;


 struct StringEntry* calloc (int,int) ;

__attribute__((used)) static void
AddStringToHash(struct StringHashTable *StringTable,
                unsigned int hash,
                ULONG Offset,
                char *StringPtr)
{
    struct StringEntry *entry = calloc(1, sizeof(struct StringEntry));
    entry->Offset = Offset;
    entry->String = StringPtr;
    entry->Next = StringTable->Table[hash];
    StringTable->Table[hash] = entry;
}
