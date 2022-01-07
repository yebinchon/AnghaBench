
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* cFileName; char* cAlternateFileName; } ;
struct TYPE_6__ {TYPE_1__ data; struct TYPE_6__* next; struct TYPE_6__* down; } ;
typedef char* LPCWSTR ;
typedef TYPE_2__ Entry ;


 scalar_t__ tolower (int ) ;

__attribute__((used)) static Entry* find_entry_win(Entry* dir, LPCWSTR name)
{
 Entry* entry;

 for(entry=dir->down; entry; entry=entry->next) {
  LPCWSTR p = name;
  LPCWSTR q = entry->data.cFileName;

  do {
   if (!*p || *p == '\\' || *p == '/')
    return entry;
  } while(tolower(*p++) == tolower(*q++));

  p = name;
  q = entry->data.cAlternateFileName;

  do {
   if (!*p || *p == '\\' || *p == '/')
    return entry;
  } while(tolower(*p++) == tolower(*q++));
 }

 return 0;
}
