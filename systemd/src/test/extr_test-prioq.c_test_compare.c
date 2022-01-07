
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int value; } ;


 int CMP (int ,int ) ;

__attribute__((used)) static int test_compare(const struct test *x, const struct test *y) {
        return CMP(x->value, y->value);
}
