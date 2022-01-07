
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int idReserved; int idType; } ;
struct TYPE_3__ {int bWidth; int bHeight; int dwDIBOffset; int dwDIBSize; } ;
struct test_ico {TYPE_2__ header; TYPE_1__ direntry; } ;
typedef int ico ;


 int S_OK ;
 int WINCODEC_ERR_BADIMAGE ;
 int WINCODEC_ERR_STREAMREAD ;
 struct test_ico ico_1 ;
 int test_ico_data (struct test_ico*,int,int ) ;
 int test_ico_data_todo (struct test_ico*,int,int ) ;

__attribute__((used)) static void test_decoder(void)
{
    struct test_ico ico;


    ico = ico_1;
    ico.direntry.bWidth = 2;
    ico.direntry.bHeight = 2;
    test_ico_data(&ico, sizeof(ico), S_OK);


    ico = ico_1;
    ico.direntry.dwDIBOffset = sizeof(ico);
    test_ico_data(&ico, sizeof(ico), WINCODEC_ERR_BADIMAGE);

    ico = ico_1;
    ico.direntry.dwDIBSize = sizeof(ico);
    test_ico_data(&ico, sizeof(ico), WINCODEC_ERR_BADIMAGE);


    ico = ico_1;
    ico.header.idReserved = 1;
    test_ico_data_todo(&ico, sizeof(ico), S_OK);
    ico.header.idReserved = 0;
    ico.header.idType = 100;
    test_ico_data_todo(&ico, sizeof(ico), S_OK);


    ico = ico_1;
    test_ico_data(&ico, sizeof(ico.header) - 1, WINCODEC_ERR_STREAMREAD);
    test_ico_data(&ico, sizeof(ico.header) + sizeof(ico.direntry) - 1, WINCODEC_ERR_BADIMAGE);
}
