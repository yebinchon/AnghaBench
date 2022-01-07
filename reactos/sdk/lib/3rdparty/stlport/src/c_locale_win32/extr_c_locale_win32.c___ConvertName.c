
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* abbrev; int name; } ;
typedef TYPE_1__ LOCALECONV ;


 int lstrcmpiA (char const*,int ) ;

const char* __ConvertName(const char* lname, LOCALECONV* ConvTable, int TableSize) {
  int i;
  int cmp;
  int low = 0;
  int high = TableSize - 1;


  while (low <= high) {
    i = (low + high) / 2;

    if ((cmp = lstrcmpiA(lname, (*(ConvTable + i)).name)) == 0)
      return (*(ConvTable + i)).abbrev;
    else if (cmp < 0)
      high = i - 1;
    else
      low = i + 1;
  }
  return lname;
}
