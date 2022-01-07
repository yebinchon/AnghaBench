
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_OK ;
 scalar_t__ access (int ,int ) ;
 scalar_t__ strlen (int ) ;
 int tfile ;
 int unlink (int ) ;

__attribute__((used)) static void
cleanup(void)
{
 if ((strlen(tfile) != 0) && (access(tfile, F_OK) == 0)) {
  (void) unlink(tfile);
 }
}
