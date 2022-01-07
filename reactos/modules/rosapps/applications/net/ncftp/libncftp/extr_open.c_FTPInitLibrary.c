
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct servent {int s_port; } ;
struct TYPE_4__ {unsigned int defaultPort; int init; int socksInit; int magic; } ;
typedef int FTPLibraryInfo ;
typedef TYPE_1__* FTPLIPtr ;


 int SOCKSinit (char*) ;
 int STRNCPY (int ,int ) ;
 struct servent* getservbyname (char*,char*) ;
 scalar_t__ kDefaultFTPPort ;
 int kErrBadParameter ;
 int kLibraryMagic ;
 int kNoErr ;
 int memset (TYPE_1__* const,int ,int) ;
 scalar_t__ ntohs (int ) ;

int
FTPInitLibrary(const FTPLIPtr lip)
{
 struct servent *ftp;

 if (lip == ((void*)0))
  return (kErrBadParameter);

 (void) memset(lip, 0, sizeof(FTPLibraryInfo));
 if ((ftp = getservbyname("ftp", "tcp")) == ((void*)0))
  lip->defaultPort = (unsigned int) kDefaultFTPPort;
 else
  lip->defaultPort = (unsigned int) ntohs(ftp->s_port);

 lip->init = 1;
 (void) STRNCPY(lip->magic, kLibraryMagic);
 return (kNoErr);
}
