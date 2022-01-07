
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int LPCWSTR ;


 int CP_ACP ;
 int WideCharToMultiByte (int ,int ,int ,int,char*,int,int *,int *) ;
 scalar_t__ tolower (char const) ;

__attribute__((used)) static int html_src_compare(LPCWSTR strw, const char *stra)
{
    char buf[2048], *p1;
    const char *p2;

    WideCharToMultiByte(CP_ACP, 0, strw, -1, buf, sizeof(buf), ((void*)0), ((void*)0));

    p1 = buf;
    p2 = stra;
    while(1) {
        while(*p1=='\r' || *p1=='\n' || *p1=='\"') p1++;
        while(*p2=='\r' || *p2=='\n') p2++;

        if(!*p1 || !*p2 || tolower(*p1)!=tolower(*p2))
            break;

        p1++;
        p2++;
    }

    return *p1 != *p2;
}
