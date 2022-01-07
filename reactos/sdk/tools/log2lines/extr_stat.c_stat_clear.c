
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SUMM ;
typedef int PSUMM ;


 int memset (int ,int ,int) ;

void
stat_clear(PSUMM psumm)
{
    memset(psumm, 0, sizeof(SUMM));
}
