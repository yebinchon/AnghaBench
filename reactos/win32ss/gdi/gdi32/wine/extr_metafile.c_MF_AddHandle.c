
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {scalar_t__* objectHandle; } ;
typedef scalar_t__ HGDIOBJ ;
typedef TYPE_1__ HANDLETABLE ;



__attribute__((used)) static int MF_AddHandle(HANDLETABLE *ht, UINT htlen, HGDIOBJ hobj)
{
    int i;

    for (i = 0; i < htlen; i++)
    {
 if (*(ht->objectHandle + i) == 0)
 {
     *(ht->objectHandle + i) = hobj;
     return i;
 }
    }
    return -1;
}
