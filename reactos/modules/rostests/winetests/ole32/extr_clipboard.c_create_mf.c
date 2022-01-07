
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_2; int member_3; int member_1; int member_0; } ;
typedef TYPE_1__ RECT ;
typedef int HMETAFILE ;
typedef int HDC ;


 int CloseMetaFile (int ) ;
 int CreateMetaFileA (int *) ;
 int ETO_OPAQUE ;
 int ExtTextOutA (int ,int ,int ,int ,TYPE_1__*,char*,int ,int *) ;
 int strlen (char*) ;

__attribute__((used)) static HMETAFILE create_mf(void)
{
    RECT rect = {0, 0, 100, 100};
    HDC hdc = CreateMetaFileA(((void*)0));
    ExtTextOutA(hdc, 0, 0, ETO_OPAQUE, &rect, "Test String", strlen("Test String"), ((void*)0));
    return CloseMetaFile(hdc);
}
