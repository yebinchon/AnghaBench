
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int lfFaceName; } ;
typedef TYPE_1__ LOGFONTW ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ lstrcmpW (int ,int ) ;
 scalar_t__ memcmp (TYPE_1__ const*,TYPE_1__ const*,int) ;

__attribute__((used)) static BOOL ME_IsFontEqual(const LOGFONTW *p1, const LOGFONTW *p2)
{
  if (memcmp(p1, p2, sizeof(LOGFONTW)-sizeof(p1->lfFaceName)))
    return FALSE;
  if (lstrcmpW(p1->lfFaceName, p2->lfFaceName))
    return FALSE;
  return TRUE;
}
