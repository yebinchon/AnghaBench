
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_se (char*) ;
 int free (char*) ;
 int lookup ;
 int puts (char*) ;
 char* replace_var (char*,int ,int *) ;
 char* streq (char*,char*) ;
 char* strreplace (char*,char*,char*) ;

int main(int argc, char *argv[]) {
        char *r;

        assert_se(r = replace_var("@@@foobar@xyz@HALLO@foobar@test@@testtest@TEST@...@@@", lookup, ((void*)0)));
        puts(r);
        assert_se(streq(r, "@@@foobar@xyz<<<HALLO>>>foobar@test@@testtest<<<TEST>>>...@@@"));
        free(r);

        assert_se(r = strreplace("XYZFFFFXYZFFFFXYZ", "XYZ", "ABC"));
        puts(r);
        assert_se(streq(r, "ABCFFFFABCFFFFABC"));
        free(r);

        return 0;
}
