
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int le16_t ;


 int read16 (int *) ;

__attribute__((used)) static void fill_utf16(wchar_t *name, unsigned char *entry)
{
    int i;
    for (i=0; i<5; i++)
 name[i] = read16((le16_t*)&entry[1 + 2*i]);
    for (i=5; i<11; i++)
 name[i] = read16((le16_t*)&entry[4 + 2*i]);
    for (i=11; i<12; i++)
 name[i] = read16((le16_t*)&entry[6 + 2*i]);
}
