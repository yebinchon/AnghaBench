
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int fds; int timeout; int maxfd; } ;
typedef TYPE_1__* SelectSetPtr ;
typedef int SelectSet ;


 scalar_t__ EINTR ;
 int SELECT_TYPE_ARG234 ;
 int SELECT_TYPE_ARG5 ;
 scalar_t__ errno ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int select (int ,int *,int,int *,int) ;

int
SelectW(SelectSetPtr ssp, SelectSetPtr resultssp)
{
 int rc;

 do {
  memcpy(resultssp, ssp, sizeof(SelectSet));
  rc = select(resultssp->maxfd, ((void*)0), SELECT_TYPE_ARG234 &resultssp->fds, ((void*)0), SELECT_TYPE_ARG5 &resultssp->timeout);
 } while ((rc < 0) && (errno == EINTR));
 return (rc);
}
