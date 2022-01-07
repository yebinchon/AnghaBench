
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LC_ALL ;
 int ok (int,char*,int) ;
 int p___mb_cur_max_func () ;
 int* p__p___mb_cur_max () ;
 int setlocale (int ,char*) ;
 int skip (char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test___mb_cur_max_func(void)
{
    int mb_cur_max;

    setlocale(LC_ALL, "C");


    if(!p___mb_cur_max_func)
        win_skip("Skipping ___mb_cur_max_func tests\n");
    else {
        mb_cur_max = p___mb_cur_max_func();
        ok(mb_cur_max == 1, "mb_cur_max = %d, expected 1\n", mb_cur_max);


        if (!setlocale(LC_ALL, "chinese"))
            win_skip("Skipping test with chinese locale\n");
        else {
            mb_cur_max = p___mb_cur_max_func();
            ok(mb_cur_max == 2, "mb_cur_max = %d, expected 2\n", mb_cur_max);
            setlocale(LC_ALL, "C");
        }
    }


    if (!p__p___mb_cur_max)
        skip("Skipping __p___mb_cur_max tests\n");
    else {
        mb_cur_max = *p__p___mb_cur_max();
        ok(mb_cur_max == 1, "mb_cur_max = %d, expected 1\n", mb_cur_max);


        if (!setlocale(LC_ALL, "chinese"))
            win_skip("Skipping test with chinese locale\n");
        else {
            mb_cur_max = *p__p___mb_cur_max();
            ok(mb_cur_max == 2, "mb_cur_max = %d, expected 2\n", mb_cur_max);
            setlocale(LC_ALL, "C");
        }
    }
}
