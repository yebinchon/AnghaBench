
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lpCurLoc; } ;
typedef TYPE_1__* PUXINI_FILE ;
typedef int LPCWSTR ;



__attribute__((used)) static inline void UXINI_UnGetToLine(PUXINI_FILE uf, LPCWSTR lpLine)
{
    uf->lpCurLoc = lpLine;
}
