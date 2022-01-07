
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ lpCurLoc; scalar_t__ lpEnd; } ;
typedef TYPE_1__* PUXINI_FILE ;
typedef int BOOL ;



__attribute__((used)) static inline BOOL UXINI_eof(PUXINI_FILE uf)
{
    return uf->lpCurLoc >= uf->lpEnd;
}
