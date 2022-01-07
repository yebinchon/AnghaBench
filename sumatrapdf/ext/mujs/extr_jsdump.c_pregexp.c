
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int JS_REGEXP_G ;
 int JS_REGEXP_I ;
 int JS_REGEXP_M ;
 int pc (char) ;
 int ps (char const*) ;

__attribute__((used)) static void pregexp(const char *prog, int flags)
{
 pc('/');
 ps(prog);
 pc('/');
 if (flags & JS_REGEXP_G) pc('g');
 if (flags & JS_REGEXP_I) pc('i');
 if (flags & JS_REGEXP_M) pc('m');
}
