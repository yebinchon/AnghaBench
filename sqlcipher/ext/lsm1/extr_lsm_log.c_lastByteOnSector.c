
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ i64 ;
struct TYPE_4__ {scalar_t__ szSector; } ;
typedef TYPE_1__ LogWriter ;


 scalar_t__ firstByteOnSector (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static i64 lastByteOnSector(LogWriter *pLog, i64 iOff){
  return firstByteOnSector(pLog, iOff) + pLog->szSector - 1;
}
