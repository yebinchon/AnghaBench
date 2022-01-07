
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int styleid_t ;
typedef char WCHAR ;
typedef int HTMLStyle ;
typedef int HRESULT ;


 float floor (float) ;
 int set_style_attr (int *,int ,char*,int ) ;
 int sprintfW (char*,char*,float) ;

__attribute__((used)) static inline HRESULT set_style_pos(HTMLStyle *This, styleid_t sid, float value)
{
    WCHAR szValue[25];
    WCHAR szFormat[] = {'%','.','0','f','p','x',0};

    value = floor(value);

    sprintfW(szValue, szFormat, value);

    return set_style_attr(This, sid, szValue, 0);
}
