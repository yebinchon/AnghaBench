
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char const* const buf; void* errNo; int bufSize; } ;
typedef TYPE_1__* FTPCIPtr ;


 int FTPChdir (TYPE_1__* const,char const* const) ;
 int FTPGetCWD (TYPE_1__* const,char const* const,int ) ;
 int FTPRmdir (TYPE_1__* const,char const* const,int ,int ) ;
 int FTPRmdirRecursiveL2 (TYPE_1__* const) ;
 void* kErrCannotGoToPrevDir ;
 int kGlobNo ;
 int kNoErr ;
 int kRecursiveNo ;

__attribute__((used)) static int
FTPRmdirRecursive(const FTPCIPtr cip, const char *const dir)
{
 int result, result2;


 (void) FTPGetCWD(cip, cip->buf, cip->bufSize);

 result = FTPChdir(cip, dir);
 if (result != kNoErr) {
  return (result);
 }

 result = FTPRmdirRecursiveL2(cip);

 if (FTPChdir(cip, cip->buf) != kNoErr) {

  if (result != kNoErr) {
   result = kErrCannotGoToPrevDir;
   cip->errNo = kErrCannotGoToPrevDir;
  }
  return (result);
 }




 result2 = FTPRmdir(cip, dir, kRecursiveNo, kGlobNo);
 if ((result2 != kNoErr) && (result == kNoErr))
  result = result2;

 return (result);
}
