
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hb_test_bug (char*,unsigned int) ;

__attribute__((used)) static inline void
hb_test_bug_mozilla (unsigned int number)
{
  hb_test_bug ("http://bugzilla.mozilla.org/", number);
}
