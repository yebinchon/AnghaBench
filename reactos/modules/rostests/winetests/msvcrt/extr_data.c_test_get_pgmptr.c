
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ok (int,char*,...) ;
 int p_get_pgmptr (char**) ;

__attribute__((used)) static void test_get_pgmptr(void)
{
    char *pgm = ((void*)0);
    int res;

    if (!p_get_pgmptr)
        return;

    res = p_get_pgmptr(&pgm);

    ok( res == 0, "Wrong _get_pgmptr return value %d expected 0\n", res);
    ok( pgm != ((void*)0), "_get_pgmptr returned a NULL pointer\n" );
}
