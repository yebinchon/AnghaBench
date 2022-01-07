
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;


 int ok (int,char*,int) ;
 int pFindMRUData (int *,int *,int ,int *) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_FindMRUData(void)
{
    INT iRet;

    if (!pFindMRUData)
    {
        win_skip("FindMRUData entry point not found\n");
        return;
    }


    iRet = pFindMRUData(((void*)0), ((void*)0), 0, ((void*)0));
    ok(iRet == -1, "FindMRUData expected -1, got %d\n", iRet);
}
