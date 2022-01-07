
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int iMalloc; } ;
struct TYPE_4__ {scalar_t__ uType; int (* UNION_MEMBER ) (int ) ;} ;
typedef TYPE_1__ STRRET ;


 TYPE_3__ Globals ;
 int IMalloc_Free (int ,int ) ;
 scalar_t__ STRRET_WSTR ;
 int pOleStr ;
 int stub1 (int ) ;

__attribute__((used)) static void free_strret(STRRET* str)
{
 if (str->uType == STRRET_WSTR)
  IMalloc_Free(Globals.iMalloc, str->UNION_MEMBER(pOleStr));
}
