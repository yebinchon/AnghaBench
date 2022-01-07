
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char BYTE ;


 int atoi (char*) ;

__attribute__((used)) static const BYTE*
GetSectionName(void *StringsBase, const BYTE *SectionTitle)
{
    if (SectionTitle[0] == '/')
    {
        int offset = atoi((char*)SectionTitle+1);
        return ((BYTE *)StringsBase) + offset;
    }
    else
        return SectionTitle;
}
