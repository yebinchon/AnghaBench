
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _IONBF ;
 int setvbuf (int ,int *,int ,int ) ;
 int stdout ;
 int test (char*,char*) ;
 int test_strcasestr (char*,char*,int) ;
 int test_towc (char*,int,int) ;

int main (void)
{
    (void)setvbuf (stdout, ((void*)0), _IONBF, 0);


    test_towc("", 0, 0);
    test_towc("\n", 1, '\n');
    test_towc("\x7F", 1, 0x7F);
    test_towc("\xC3\xA9", 2, 0xE9);
    test_towc("\xDF\xBF", 2, 0x7FF);
    test_towc("\xE2\x82\xAC", 3, 0x20AC);
    test_towc("\xEF\xBF\xBF", 3, 0xFFFF);
    test_towc("\xF0\x90\x80\x81", 4, 0x10001);
    test_towc("\xF4\x80\x80\x81", 4, 0x100001);
    test_towc("\xF4\x8F\xBF\xBF", 4, 0x10FFFF);

    test_towc("\xC0\x80", -1, 0);
    test_towc("\xC1\xBF", -1, 0x7F);
    test_towc("\xE0\x80\x80", -1, 0);
    test_towc("\xE0\x9F\xBF", -1, 0x7FF);
    test_towc("\xF0\x80\x80\x80", -1, 0);
    test_towc("\xF0\x8F\xBF\xBF", -1, 0xFFFF);

    test_towc("\xF4\x90\x80\x80", -1, 0x110000);
    test_towc("\xF7\xBF\xBF\xBF", -1, 0x1FFFFF);

    test_towc("\xED\x9F\xBF", 3, 0xD7FF);
    test_towc("\xED\xA0\x80", -1, 0xD800);
    test_towc("\xED\xBF\xBF", -1, 0xDFFF);
    test_towc("\xEE\x80\x80", 3, 0xE000);

    test_towc("\x80", -1, 0);
    test_towc("\xBF", -1, 0);

    test_towc("\xDF", -1, 0x7FF);
    test_towc("\xEF", -1, 0xFFFF);
    test_towc("\xF4", -1, 0x10FFFF);
    test_towc("\xEF\xBF", -1, 0xFFFF);
    test_towc("\xF4\xBF\xBF", -1, 0x10FFFF);

    test ("", "");
    test ("this_should_not_be_modified_1234",
          "this_should_not_be_modified_1234");

    test ("\xFF", "?");
    test ("\xEF\xBB\xBFHello", "\xEF\xBB\xBFHello");
    test ("\x00\xE9", "");

    test ("T\xC3\xA9l\xC3\xA9vision \xE2\x82\xAC", "Télévision €");
    test ("T\xE9l\xE9vision", "T?l?vision");
    test ("\xC1\x94\xC3\xa9l\xC3\xA9vision", "??élévision");

    test ("Hel\xF0\x83\x85\x87lo", "Hel????lo");

    test_strcasestr ("", "", 0);
    test_strcasestr ("", "a", -1);
    test_strcasestr ("a", "", 0);
    test_strcasestr ("heLLo", "l", 2);
    test_strcasestr ("heLLo", "lo", 3);
    test_strcasestr ("heLLo", "llo", 2);
    test_strcasestr ("heLLo", "la", -1);
    test_strcasestr ("heLLo", "oa", -1);
    test_strcasestr ("Télé", "é", 1);
    test_strcasestr ("Télé", "élé", 1);
    test_strcasestr ("Télé", "léé", -1);

    return 0;
}
