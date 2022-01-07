
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* PDWORD ;
typedef int BOOL ;


 int ERR (char*,scalar_t__) ;
 int FALSE ;
 int GlobalJobList ;
 int IS_VALID_JOB_ID (scalar_t__) ;
 scalar_t__ LookupElementSkiplist (int *,scalar_t__*,int *) ;
 int TRUE ;
 scalar_t__ _dwLastJobID ;

__attribute__((used)) static BOOL
_GetNextJobID(PDWORD dwJobID)
{
    ++_dwLastJobID;

    while (LookupElementSkiplist(&GlobalJobList, &_dwLastJobID, ((void*)0)))
    {

        ++_dwLastJobID;
    }

    if (!IS_VALID_JOB_ID(_dwLastJobID))
    {
        ERR("Job ID %lu isn't valid!\n", _dwLastJobID);
        return FALSE;
    }

    *dwJobID = _dwLastJobID;
    return TRUE;
}
