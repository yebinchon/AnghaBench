
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test (int ,char const*,char const*) ;
 int vlc_b64_decode ;
 int vlc_b64_encode ;

__attribute__((used)) static inline void test_b64 (const char *in, const char *out)
{
    test(vlc_b64_encode, in, out);
    test(vlc_b64_decode, out, in);
}
