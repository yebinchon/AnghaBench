
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FTPCIPtr ;


 int RunBatch (int,int const) ;
 int Trace (int ,char*,scalar_t__,char*) ;
 scalar_t__ gUnprocessedJobs ;

void
RunBatchIfNeeded(const FTPCIPtr cip)
{
 if (gUnprocessedJobs > 0) {





  gUnprocessedJobs = 0;
  RunBatch(0, cip);

 }
}
