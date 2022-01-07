
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;


 int ok (int,char*,int) ;
 int pAddMRUData ;
 int pFindMRUData (int *,int *,int ,int *) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_AddMRUData(void)
{
    INT iRet;

    if (!pAddMRUData)
    {
        win_skip("AddMRUData entry point not found\n");
        return;
    }


    iRet = pFindMRUData(((void*)0), ((void*)0), 0, ((void*)0));
    ok(iRet == -1, "AddMRUData expected -1, got %d\n", iRet);
}
