
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPWSTR ;
typedef int LPCSTR ;


 int CP_ACP ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,int ,int,int ,int ) ;

__attribute__((used)) static inline void to_widechar(LPWSTR dest, LPCSTR src)
{
    MultiByteToWideChar(CP_ACP, 0, src, -1, dest, MAX_PATH);
}
