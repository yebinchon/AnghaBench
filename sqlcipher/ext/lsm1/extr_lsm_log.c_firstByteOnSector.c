
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_3__ {int szSector; } ;
typedef TYPE_1__ LogWriter ;



__attribute__((used)) static i64 firstByteOnSector(LogWriter *pLog, i64 iOff){
  return (iOff / pLog->szSector) * pLog->szSector;
}
