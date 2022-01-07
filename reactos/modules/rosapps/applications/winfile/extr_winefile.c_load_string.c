
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_2__ {int hInstance; } ;
typedef int LPWSTR ;
typedef int DWORD ;


 TYPE_1__ Globals ;
 int LoadStringW (int ,int ,int ,int ) ;

__attribute__((used)) static LPWSTR load_string(LPWSTR buffer, DWORD size, UINT id)
{
 LoadStringW(Globals.hInstance, id, buffer, size);
 return buffer;
}
