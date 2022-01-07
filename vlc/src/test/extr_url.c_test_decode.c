
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test (int ,char const*,char const*) ;
 int vlc_uri_decode_duplicate ;

__attribute__((used)) static inline void test_decode (const char *in, const char *out)
{
    test (vlc_uri_decode_duplicate, in, out);
}
