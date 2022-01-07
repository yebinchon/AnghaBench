
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TEST_LENGTHS ;



__attribute__((used)) static int
num_test_strings()
{
 return sizeof(TEST_LENGTHS) / sizeof(int);
}
