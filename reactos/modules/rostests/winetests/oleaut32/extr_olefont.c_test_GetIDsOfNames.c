
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int LCID ;


 int DISPID_FONT_BOLD ;
 int DISPID_FONT_CHARSET ;
 int DISPID_FONT_ITALIC ;
 int DISPID_FONT_NAME ;
 int DISPID_FONT_SIZE ;
 int DISPID_FONT_STRIKE ;
 int DISPID_FONT_UNDER ;
 int DISPID_FONT_WEIGHT ;
 int DISPID_UNKNOWN ;
 int DISP_E_UNKNOWNNAME ;
 int E_INVALIDARG ;
 int LANG_ENGLISH ;
 int LANG_FRENCH ;
 int MAKELANGID (int ,int ) ;
 int MAKELCID (int ,int ) ;
 int SORT_DEFAULT ;
 int SUBLANG_ENGLISH_US ;
 int SUBLANG_FRENCH ;
 int S_OK ;
 int test_names_ids (char*,char*,char*,char*,int,int,int,int ,int) ;

__attribute__((used)) static void test_GetIDsOfNames(void)
{
    WCHAR name_Name[] = {'N','a','m','e',0};
    WCHAR name_Italic[] = {'I','t','a','l','i','c',0};
    WCHAR name_Size[] = {'S','i','z','e',0};
    WCHAR name_Bold[] = {'B','o','l','d',0};
    WCHAR name_Underline[] = {'U','n','d','e','r','l','i','n','e',0};
    WCHAR name_Strikethrough[] = {'S','t','r','i','k','e','t','h','r','o','u','g','h',0};
    WCHAR name_Weight[] = {'W','e','i','g','h','t',0};
    WCHAR name_Charset[] = {'C','h','a','r','s','e','t',0};
    WCHAR name_Foo[] = {'F','o','o',0};
    WCHAR name_nAmE[] = {'n','A','m','E',0};
    WCHAR name_Nom[] = {'N','o','m',0};

    LCID en_us = MAKELCID(MAKELANGID(LANG_ENGLISH,SUBLANG_ENGLISH_US),
                          SORT_DEFAULT);
    LCID fr_fr = MAKELCID(MAKELANGID(LANG_FRENCH,SUBLANG_FRENCH),
                          SORT_DEFAULT);


    test_names_ids(name_Name, "Name", ((void*)0), "", en_us,
                   DISPID_FONT_NAME, 0, S_OK,1);
    test_names_ids(name_Size, "Size", ((void*)0), "", en_us,
                   DISPID_FONT_SIZE, 0, S_OK,1);
    test_names_ids(name_Bold, "Bold", ((void*)0), "", en_us,
                   DISPID_FONT_BOLD, 0, S_OK,1);
    test_names_ids(name_Italic, "Italic", ((void*)0), "", en_us,
                   DISPID_FONT_ITALIC, 0, S_OK,1);
    test_names_ids(name_Underline, "Underline", ((void*)0), "", en_us,
                   DISPID_FONT_UNDER, 0, S_OK,1);
    test_names_ids(name_Strikethrough, "Strikethrough", ((void*)0), "", en_us,
                   DISPID_FONT_STRIKE, 0, S_OK,1);
    test_names_ids(name_Weight, "Weight", ((void*)0), "", en_us,
                   DISPID_FONT_WEIGHT, 0, S_OK,1);
    test_names_ids(name_Charset, "Charset", ((void*)0), "", en_us,
                   DISPID_FONT_CHARSET, 0, S_OK,1);


    test_names_ids(name_nAmE, "nAmE", ((void*)0), "", en_us,
                   DISPID_FONT_NAME, 0, S_OK,1);


    test_names_ids(name_Foo, "Foo", ((void*)0), "", en_us,
                   DISPID_UNKNOWN, 0, DISP_E_UNKNOWNNAME,1);



    test_names_ids(name_Italic, "Italic", name_Name, "Name", en_us,
                   DISPID_FONT_ITALIC, DISPID_UNKNOWN, S_OK,2);
    test_names_ids(name_Italic, "Italic", name_Foo, "Foo", en_us,
                   DISPID_FONT_ITALIC, DISPID_UNKNOWN, S_OK,2);


    test_names_ids(name_Name, "Name", ((void*)0), "", fr_fr,
                   DISPID_FONT_NAME, 0, S_OK,1);
    test_names_ids(name_Nom, "This is not a font", ((void*)0), "", fr_fr,
                   DISPID_UNKNOWN, 0, DISP_E_UNKNOWNNAME,1);


    test_names_ids(name_Name, "Name", ((void*)0), "", en_us,
                   0xdeadbeef, 0xdeadbeef, E_INVALIDARG,0);
    test_names_ids(name_Italic, "Italic", ((void*)0), "", en_us,
                   0xdeadbeef, 0xdeadbeef, E_INVALIDARG,0);
    test_names_ids(name_Foo, "Foo", ((void*)0), "", en_us,
                   0xdeadbeef, 0xdeadbeef, E_INVALIDARG,0);


    test_names_ids(name_Name, "Name", ((void*)0), "", -1,
                   DISPID_FONT_NAME, 0, S_OK,1);
}
