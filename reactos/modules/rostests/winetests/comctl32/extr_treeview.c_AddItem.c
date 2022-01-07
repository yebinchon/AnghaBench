
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t pos ;
 char* sequence ;

__attribute__((used)) static void AddItem(char ch)
{
    sequence[pos++] = ch;
    sequence[pos] = '\0';
}
