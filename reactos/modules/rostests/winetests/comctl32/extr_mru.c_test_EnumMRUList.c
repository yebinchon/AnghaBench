
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pEnumMRUListA (int *,int ,int *,int ) ;
 int pEnumMRUListW (int *,int ,int *,int ) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_EnumMRUList(void)
{
    if (!pEnumMRUListA || !pEnumMRUListW)
    {
        win_skip("EnumMRUListA/EnumMRUListW entry point not found\n");
        return;
    }


    if (0)
    {

        pEnumMRUListA(((void*)0), 0, ((void*)0), 0);
        pEnumMRUListW(((void*)0), 0, ((void*)0), 0);
    }
}
