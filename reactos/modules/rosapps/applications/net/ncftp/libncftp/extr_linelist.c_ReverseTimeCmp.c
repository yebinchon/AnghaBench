
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mdtm; } ;
typedef TYPE_1__* FileInfoPtr ;



__attribute__((used)) static int
ReverseTimeCmp(const void *a, const void *b)
{
 FileInfoPtr *fipa, *fipb;

 fipa = (FileInfoPtr *) a;
 fipb = (FileInfoPtr *) b;
 if ((**fipa).mdtm == (**fipb).mdtm)
  return (0);
 else if ((**fipa).mdtm < (**fipb).mdtm)
  return (-1);
 return (1);
}
