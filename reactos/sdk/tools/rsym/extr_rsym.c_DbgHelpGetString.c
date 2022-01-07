
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct DbgHelpStringTab {char const*** Table; } ;



const char*
DbgHelpGetString(struct DbgHelpStringTab *tab, int id)
{
    int i = id >> 10;
    int bucket = id & 0x3ff;
    return tab->Table[bucket][i];
}
