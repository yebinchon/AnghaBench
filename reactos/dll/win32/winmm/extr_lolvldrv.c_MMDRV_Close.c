
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int LPWINE_MLD ;
typedef int DWORD ;


 int MMDRV_Message (int ,int ,long,long) ;
 int TRACE (char*,int ,int ) ;

DWORD MMDRV_Close(LPWINE_MLD mld, UINT wMsg)
{
    TRACE("(%p, %04x)\n", mld, wMsg);
    return MMDRV_Message(mld, wMsg, 0L, 0L);
}
