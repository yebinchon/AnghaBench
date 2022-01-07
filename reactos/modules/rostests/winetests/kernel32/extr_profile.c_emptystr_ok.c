
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CHAR ;
typedef int BOOL ;


 int FALSE ;
 int MAX_PATH ;
 int TRUE ;
 int trace (char*,int,scalar_t__) ;

__attribute__((used)) static BOOL emptystr_ok(CHAR emptystr[MAX_PATH])
{
    int i;

    for(i = 0;i < MAX_PATH;++i)
        if(emptystr[i] != 0)
        {
            trace("emptystr[%d] = %d\n",i,emptystr[i]);
            return FALSE;
        }

    return TRUE;
}
