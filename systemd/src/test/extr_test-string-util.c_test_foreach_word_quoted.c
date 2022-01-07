
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STRV_MAKE (char*,...) ;
 int STRV_MAKE_EMPTY ;
 int check (char*,int ,int) ;

__attribute__((used)) static void test_foreach_word_quoted(void) {
        check("test a b c 'd' e '' '' hhh '' '' \"a b c\"",
              STRV_MAKE("test",
                        "a",
                        "b",
                        "c",
                        "d",
                        "e",
                        "",
                        "",
                        "hhh",
                        "",
                        "",
                        "a b c"),
              0);

        check("test \"xxx",
              STRV_MAKE("test"),
              1);

        check("test\\",
              STRV_MAKE_EMPTY,
              1);
}
