
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int BUFERROR_BUF ;
 int buferror (int,char*,int) ;
 int test_fail (char*,char*) ;

__attribute__((used)) static void
mallctl_failure(int err) {
 char buf[BUFERROR_BUF];

 buferror(err, buf, sizeof(buf));
 test_fail("Error in mallctl(): %s", buf);
}
