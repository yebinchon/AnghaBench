
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct call_entry {int dummy; } ;


 struct call_entry* expectCall ;

__attribute__((used)) static void set_expected_seq(struct call_entry *expected)
{
    expectCall = expected;
}
