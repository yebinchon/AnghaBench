
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LRESULT ;
typedef int DWORD_PTR ;


 int TRACE (char*,int ) ;
 int * oss ;

__attribute__((used)) static LRESULT WAVEMAP_drvClose(DWORD_PTR dwDevID)
{
    TRACE("(%08lx)\n", dwDevID);

    if (oss) {
 oss = ((void*)0);
 return 1;
    }
    return 0;
}
