
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PWINE_ACMSTREAM ;
typedef int HACMSTREAM ;


 int TRACE (char*,int ) ;

__attribute__((used)) static PWINE_ACMSTREAM ACM_GetStream(HACMSTREAM has)
{
    TRACE("(%p)\n", has);

    return (PWINE_ACMSTREAM)has;
}
