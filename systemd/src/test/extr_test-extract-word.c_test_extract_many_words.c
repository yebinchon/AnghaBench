
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXTRACT_UNQUOTE ;
 int assert_se (int) ;
 int extract_many_words (char const**,int *,int ,char**,...) ;
 int free (char*) ;
 int isempty (char const*) ;
 int streq_ptr (char*,char*) ;

__attribute__((used)) static void test_extract_many_words(void) {
        const char *p, *original;
        char *a, *b, *c;

        p = original = "foobar waldi piep";
        assert_se(extract_many_words(&p, ((void*)0), 0, &a, &b, &c, ((void*)0)) == 3);
        assert_se(isempty(p));
        assert_se(streq_ptr(a, "foobar"));
        assert_se(streq_ptr(b, "waldi"));
        assert_se(streq_ptr(c, "piep"));
        free(a);
        free(b);
        free(c);

        p = original = "'foobar' wa\"ld\"i   ";
        assert_se(extract_many_words(&p, ((void*)0), 0, &a, &b, &c, ((void*)0)) == 2);
        assert_se(isempty(p));
        assert_se(streq_ptr(a, "'foobar'"));
        assert_se(streq_ptr(b, "wa\"ld\"i"));
        assert_se(streq_ptr(c, ((void*)0)));
        free(a);
        free(b);

        p = original = "'foobar' wa\"ld\"i   ";
        assert_se(extract_many_words(&p, ((void*)0), EXTRACT_UNQUOTE, &a, &b, &c, ((void*)0)) == 2);
        assert_se(isempty(p));
        assert_se(streq_ptr(a, "foobar"));
        assert_se(streq_ptr(b, "waldi"));
        assert_se(streq_ptr(c, ((void*)0)));
        free(a);
        free(b);

        p = original = "";
        assert_se(extract_many_words(&p, ((void*)0), 0, &a, &b, &c, ((void*)0)) == 0);
        assert_se(isempty(p));
        assert_se(streq_ptr(a, ((void*)0)));
        assert_se(streq_ptr(b, ((void*)0)));
        assert_se(streq_ptr(c, ((void*)0)));

        p = original = "  ";
        assert_se(extract_many_words(&p, ((void*)0), 0, &a, &b, &c, ((void*)0)) == 0);
        assert_se(isempty(p));
        assert_se(streq_ptr(a, ((void*)0)));
        assert_se(streq_ptr(b, ((void*)0)));
        assert_se(streq_ptr(c, ((void*)0)));

        p = original = "foobar";
        assert_se(extract_many_words(&p, ((void*)0), 0, ((void*)0)) == 0);
        assert_se(p == original);

        p = original = "foobar waldi";
        assert_se(extract_many_words(&p, ((void*)0), 0, &a, ((void*)0)) == 1);
        assert_se(p == original+7);
        assert_se(streq_ptr(a, "foobar"));
        free(a);

        p = original = "     foobar    ";
        assert_se(extract_many_words(&p, ((void*)0), 0, &a, ((void*)0)) == 1);
        assert_se(isempty(p));
        assert_se(streq_ptr(a, "foobar"));
        free(a);
}
