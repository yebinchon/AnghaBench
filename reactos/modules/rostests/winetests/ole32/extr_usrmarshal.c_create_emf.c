
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int member_2; int member_3; int member_1; int member_0; } ;
typedef TYPE_1__ RECT ;
typedef int HENHMETAFILE ;
typedef int HDC ;


 int CloseEnhMetaFile (int ) ;
 int CreateEnhMetaFileA (int *,int *,TYPE_1__ const*,char*) ;
 int ETO_OPAQUE ;
 int ExtTextOutA (int ,int ,int ,int ,TYPE_1__ const*,char*,int ,int *) ;
 int strlen (char*) ;

__attribute__((used)) static HENHMETAFILE create_emf(void)
{
    const RECT rect = {0, 0, 100, 100};
    HDC hdc = CreateEnhMetaFileA(((void*)0), ((void*)0), &rect, "HENHMETAFILE Marshaling Test\0Test\0\0");
    ExtTextOutA(hdc, 0, 0, ETO_OPAQUE, &rect, "Test String", strlen("Test String"), ((void*)0));
    return CloseEnhMetaFile(hdc);
}
