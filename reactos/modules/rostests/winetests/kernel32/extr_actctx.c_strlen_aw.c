
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;


 int CP_ACP ;
 scalar_t__ MultiByteToWideChar (int ,int ,char const*,int,int *,int ) ;

__attribute__((used)) static DWORD strlen_aw(const char *str)
{
    return MultiByteToWideChar(CP_ACP, 0, str, -1, ((void*)0), 0) - 1;
}
