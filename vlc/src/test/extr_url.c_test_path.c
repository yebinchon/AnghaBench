
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int make_URI_def ;
 int test (int ,char const*,char const*) ;

__attribute__((used)) static inline void test_path (const char *in, const char *out)
{
    test (make_URI_def, in, out);
}
