
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 char* SPECIAL_ROOT_SLICE ;
 int test_slice_to_path_one (char*,char*,int ) ;

__attribute__((used)) static void test_slice_to_path(void) {
        test_slice_to_path_one("foobar.slice", "foobar.slice", 0);
        test_slice_to_path_one("foobar-waldo.slice", "foobar.slice/foobar-waldo.slice", 0);
        test_slice_to_path_one("foobar-waldo.service", ((void*)0), -EINVAL);
        test_slice_to_path_one(SPECIAL_ROOT_SLICE, "", 0);
        test_slice_to_path_one("--.slice", ((void*)0), -EINVAL);
        test_slice_to_path_one("-", ((void*)0), -EINVAL);
        test_slice_to_path_one("-foo-.slice", ((void*)0), -EINVAL);
        test_slice_to_path_one("-foo.slice", ((void*)0), -EINVAL);
        test_slice_to_path_one("foo-.slice", ((void*)0), -EINVAL);
        test_slice_to_path_one("foo--bar.slice", ((void*)0), -EINVAL);
        test_slice_to_path_one("foo.slice/foo--bar.slice", ((void*)0), -EINVAL);
        test_slice_to_path_one("a-b.slice", "a.slice/a-b.slice", 0);
        test_slice_to_path_one("a-b-c-d-e.slice", "a.slice/a-b.slice/a-b-c.slice/a-b-c-d.slice/a-b-c-d-e.slice", 0);

        test_slice_to_path_one("foobar@.slice", ((void*)0), -EINVAL);
        test_slice_to_path_one("foobar@waldo.slice", ((void*)0), -EINVAL);
        test_slice_to_path_one("foobar@waldo.service", ((void*)0), -EINVAL);
        test_slice_to_path_one("-foo@-.slice", ((void*)0), -EINVAL);
        test_slice_to_path_one("-foo@.slice", ((void*)0), -EINVAL);
        test_slice_to_path_one("foo@-.slice", ((void*)0), -EINVAL);
        test_slice_to_path_one("foo@@bar.slice", ((void*)0), -EINVAL);
        test_slice_to_path_one("foo.slice/foo@@bar.slice", ((void*)0), -EINVAL);
}
