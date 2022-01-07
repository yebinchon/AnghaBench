
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CanSpool () ;
 scalar_t__ HaveSpool () ;
 int printf (char*) ;

__attribute__((used)) static int
SpoolCheck(void)
{
 if (CanSpool() < 0) {



  (void) printf("Sorry, spooling isn't allowed because this user requires that the NCFTPDIR\nenvironment variable be set to a directory to write datafiles to.\n");

  return (-1);
 } else if (HaveSpool() == 0) {



  (void) printf("Sorry, the \"ncftpbatch\" program could not be found.\nThis program must be installed and in your PATH in order to use this feature.\n");

  return (-1);
 }
 return (0);
}
