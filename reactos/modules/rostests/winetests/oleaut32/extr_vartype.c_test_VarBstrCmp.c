
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sbchr00 ;
typedef int sbchr0 ;
typedef int sb2 ;
typedef int sb1 ;
typedef char WCHAR ;
typedef scalar_t__ LCID ;
typedef int HRESULT ;
typedef int * BSTR ;


 int ARRAY_SIZE (char const*) ;
 int LANG_ENGLISH ;
 int MAKELANGID (int ,int ) ;
 scalar_t__ MAKELCID (int ,int ) ;
 int NORM_IGNORECASE ;
 int SORT_DEFAULT ;
 int SUBLANG_ENGLISH_US ;
 int * SysAllocString (char const*) ;
 int * SysAllocStringByteLen (char const*,int) ;
 int * SysAllocStringLen (char const*,int ) ;
 int SysFreeString (int *) ;
 int VARBSTRCMP (int *,int *,int ,int ) ;
 int VARCMP_EQ ;
 int VARCMP_GT ;
 int VARCMP_LT ;

__attribute__((used)) static void test_VarBstrCmp(void)
{
    LCID lcid;
    HRESULT hres;
    static const WCHAR sz[] = {'W','u','r','s','c','h','t','\0'};
    static const WCHAR szempty[] = {'\0'};
    static const WCHAR sz1[] = { 'a',0 };
    static const WCHAR sz2[] = { 'A',0 };
    static const WCHAR s1[] = { 'a',0 };
    static const WCHAR s2[] = { 'a',0,'b' };
    static const char sb1[] = {1,0,1};
    static const char sb2[] = {1,0,2};
    static const char sbchr0[] = {0,0};
    static const char sbchr00[] = {0,0,0};
    BSTR bstr, bstrempty, bstr2;

    lcid = MAKELCID(MAKELANGID(LANG_ENGLISH,SUBLANG_ENGLISH_US),SORT_DEFAULT);
    bstr = SysAllocString(sz);
    bstrempty = SysAllocString(szempty);


    VARBSTRCMP(((void*)0),((void*)0),0,VARCMP_EQ);
    VARBSTRCMP(bstr,((void*)0),0,VARCMP_GT);
    VARBSTRCMP(((void*)0),bstr,0,VARCMP_LT);


    VARBSTRCMP(bstrempty,((void*)0),0,VARCMP_EQ);
    VARBSTRCMP(((void*)0),bstrempty,0,VARCMP_EQ);

    SysFreeString(bstr);
    bstr = SysAllocString(sz1);

    bstr2 = SysAllocString(sz2);
    VARBSTRCMP(bstr,bstr2,0,VARCMP_LT);
    VARBSTRCMP(bstr,bstr2,NORM_IGNORECASE,VARCMP_EQ);
    SysFreeString(bstr2);



    bstr2 = SysAllocStringLen(s1, ARRAY_SIZE(s1));
    VARBSTRCMP(bstr,bstr2,0,VARCMP_EQ);
    SysFreeString(bstr2);


    bstr2 = SysAllocStringLen(s2, ARRAY_SIZE(s2));
    VARBSTRCMP(bstr,bstr2,0,VARCMP_LT);
    SysFreeString(bstr2);

    SysFreeString(bstr);

    bstr = SysAllocStringByteLen(sbchr0, sizeof(sbchr0));
    bstr2 = SysAllocStringByteLen(sbchr00, sizeof(sbchr00));
    VARBSTRCMP(bstr,bstrempty,0,VARCMP_GT);
    VARBSTRCMP(bstrempty,bstr,0,VARCMP_LT);
    VARBSTRCMP(bstr2,bstrempty,0,VARCMP_GT);
    VARBSTRCMP(bstr2,bstr,0,VARCMP_EQ);
    SysFreeString(bstr2);
    SysFreeString(bstr);




    bstr = SysAllocStringByteLen(sb1, sizeof(sb1));
    bstr2 = SysAllocStringByteLen(sb2, sizeof(sb2));
    lcid = 0;
    VARBSTRCMP(bstr,bstr2,0,VARCMP_LT);
    SysFreeString(bstr2);
    SysFreeString(bstr);

    bstr = SysAllocStringByteLen(sbchr0, sizeof(sbchr0));
    bstr2 = SysAllocStringByteLen(sbchr00, sizeof(sbchr00));
    VARBSTRCMP(bstr,bstrempty,0,VARCMP_GT);
    VARBSTRCMP(bstrempty,bstr,0,VARCMP_LT);
    VARBSTRCMP(bstr2,bstrempty,0,VARCMP_GT);
    VARBSTRCMP(bstr2,bstr,0,VARCMP_GT);
    SysFreeString(bstr2);
    SysFreeString(bstr);
    SysFreeString(bstrempty);
}
