
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union in_addr_union {int dummy; } in_addr_union ;


 int assert_se (int) ;
 scalar_t__ in_addr_from_string (unsigned int,char const*,union in_addr_union*) ;
 int in_addr_prefix_intersect (unsigned int,union in_addr_union*,unsigned int,union in_addr_union*,unsigned int) ;

__attribute__((used)) static void test_in_addr_prefix_intersect_one(unsigned f, const char *a, unsigned apl, const char *b, unsigned bpl, int result) {
        union in_addr_union ua, ub;

        assert_se(in_addr_from_string(f, a, &ua) >= 0);
        assert_se(in_addr_from_string(f, b, &ub) >= 0);

        assert_se(in_addr_prefix_intersect(f, &ua, apl, &ub, bpl) == result);
}
