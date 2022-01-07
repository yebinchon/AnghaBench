
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int count; TYPE_2__** value; } ;
struct TYPE_7__ {int rtfKHash; int rtfKMinor; int rtfKMajor; int rtfKStr; } ;
struct TYPE_6__ {int rtfClass; int rtfMinor; int rtfMajor; } ;
typedef TYPE_1__ RTF_Info ;
typedef TYPE_2__ RTFKey ;
typedef TYPE_3__ RTFHashTableEntry ;


 int ARRAY_SIZE (int ) ;
 int Hash (char*) ;
 int rtfControl ;
 TYPE_3__* rtfHashTable ;
 int rtfKey ;
 int rtfUnknown ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static void Lookup(RTF_Info *info, char *s)
{
 RTFKey *rp;
 int hash;
        RTFHashTableEntry *entry;
        int i;

 ++s;
 hash = Hash (s);
        entry = &rtfHashTable[hash % (ARRAY_SIZE(rtfKey) * 2)];
 for (i = 0; i < entry->count; i++)
 {
                rp = entry->value[i];
  if (hash == rp->rtfKHash && strcmp (s, rp->rtfKStr) == 0)
  {
   info->rtfClass = rtfControl;
   info->rtfMajor = rp->rtfKMajor;
   info->rtfMinor = rp->rtfKMinor;
   return;
  }
 }
 info->rtfClass = rtfUnknown;
}
