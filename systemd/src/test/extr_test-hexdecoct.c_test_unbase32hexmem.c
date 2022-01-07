
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int test_unbase32hexmem_one (char*,int,int ,char*) ;

__attribute__((used)) static void test_unbase32hexmem(void) {
        test_unbase32hexmem_one("", 1, 0, "");

        test_unbase32hexmem_one("CO======", 1, 0, "f");
        test_unbase32hexmem_one("CPNG====", 1, 0, "fo");
        test_unbase32hexmem_one("CPNMU===", 1, 0, "foo");
        test_unbase32hexmem_one("CPNMUOG=", 1, 0, "foob");
        test_unbase32hexmem_one("CPNMUOJ1", 1, 0, "fooba");
        test_unbase32hexmem_one("CPNMUOJ1E8======", 1, 0, "foobar");

        test_unbase32hexmem_one("A", 1, -EINVAL, ((void*)0));
        test_unbase32hexmem_one("A=======", 1, -EINVAL, ((void*)0));
        test_unbase32hexmem_one("AAA=====", 1, -EINVAL, ((void*)0));
        test_unbase32hexmem_one("AAAAAA==", 1, -EINVAL, ((void*)0));
        test_unbase32hexmem_one("AB======", 1, -EINVAL, ((void*)0));
        test_unbase32hexmem_one("AAAB====", 1, -EINVAL, ((void*)0));
        test_unbase32hexmem_one("AAAAB===", 1, -EINVAL, ((void*)0));
        test_unbase32hexmem_one("AAAAAAB=", 1, -EINVAL, ((void*)0));

        test_unbase32hexmem_one("XPNMUOJ1", 1, -EINVAL, ((void*)0));
        test_unbase32hexmem_one("CXNMUOJ1", 1, -EINVAL, ((void*)0));
        test_unbase32hexmem_one("CPXMUOJ1", 1, -EINVAL, ((void*)0));
        test_unbase32hexmem_one("CPNXUOJ1", 1, -EINVAL, ((void*)0));
        test_unbase32hexmem_one("CPNMXOJ1", 1, -EINVAL, ((void*)0));
        test_unbase32hexmem_one("CPNMUXJ1", 1, -EINVAL, ((void*)0));
        test_unbase32hexmem_one("CPNMUOX1", 1, -EINVAL, ((void*)0));
        test_unbase32hexmem_one("CPNMUOJX", 1, -EINVAL, ((void*)0));

        test_unbase32hexmem_one("", 0, 0, "");
        test_unbase32hexmem_one("CO", 0, 0, "f");
        test_unbase32hexmem_one("CPNG", 0, 0, "fo");
        test_unbase32hexmem_one("CPNMU", 0, 0, "foo");
        test_unbase32hexmem_one("CPNMUOG", 0, 0, "foob");
        test_unbase32hexmem_one("CPNMUOJ1", 0, 0, "fooba");
        test_unbase32hexmem_one("CPNMUOJ1E8", 0, 0, "foobar");
        test_unbase32hexmem_one("CPNMUOG=", 0, -EINVAL, ((void*)0));
        test_unbase32hexmem_one("CPNMUOJ1E8======", 0, -EINVAL, ((void*)0));

        test_unbase32hexmem_one("A", 0, -EINVAL, ((void*)0));
        test_unbase32hexmem_one("AAA", 0, -EINVAL, ((void*)0));
        test_unbase32hexmem_one("AAAAAA", 0, -EINVAL, ((void*)0));
        test_unbase32hexmem_one("AB", 0, -EINVAL, ((void*)0));
        test_unbase32hexmem_one("AAAB", 0, -EINVAL, ((void*)0));
        test_unbase32hexmem_one("AAAAB", 0, -EINVAL, ((void*)0));
        test_unbase32hexmem_one("AAAAAAB", 0, -EINVAL, ((void*)0));
}
