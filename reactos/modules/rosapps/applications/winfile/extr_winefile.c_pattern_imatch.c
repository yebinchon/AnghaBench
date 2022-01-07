
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int LPCWSTR ;
typedef int BOOL ;


 int BUFFER_LEN ;
 int CharUpperW (int *) ;
 int lstrcpyW (int *,int ) ;
 int pattern_match (int *,int *) ;

__attribute__((used)) static BOOL pattern_imatch(LPCWSTR str, LPCWSTR pattern)
{
 WCHAR b1[BUFFER_LEN], b2[BUFFER_LEN];

 lstrcpyW(b1, str);
 lstrcpyW(b2, pattern);
 CharUpperW(b1);
 CharUpperW(b2);

 return pattern_match(b1, b2);
}
