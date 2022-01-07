
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bufferA ;
typedef int WCHAR ;
struct TYPE_2__ {char* url; int len; int newurl; } ;
typedef int DWORD ;
typedef char CHAR ;


 int ARRAY_SIZE (int *) ;
 int CP_ACP ;
 int INTERNET_MAX_URL_LENGTH ;
 int MultiByteToWideChar (int ,int ,char*,int,int *,int) ;
 TYPE_1__* ParseURL_table ;
 int WideCharToMultiByte (int ,int ,int *,int,char*,int,int *,int *) ;
 int lstrcmpA (char*,int ) ;
 int memset (char*,char,int) ;
 int ok (int,char*,int,int,...) ;
 int pParseURLFromOutsideSourceW (int *,int *,int*,int*) ;
 int skip (char*) ;

__attribute__((used)) static void test_ParseURLFromOutsideSourceW(void)
{
    WCHAR urlW[INTERNET_MAX_URL_LENGTH];
    WCHAR bufferW[INTERNET_MAX_URL_LENGTH];
    CHAR bufferA[INTERNET_MAX_URL_LENGTH];
    DWORD maxlen;
    DWORD dummy;
    DWORD len;
    DWORD res;

    if (!pParseURLFromOutsideSourceW) {
        skip("ParseURLFromOutsideSourceW not found\n");
        return;
    }
    MultiByteToWideChar(CP_ACP, 0, ParseURL_table[0].url, -1, urlW, INTERNET_MAX_URL_LENGTH);

    memset(bufferA, '#', sizeof(bufferA)-1);
    bufferA[sizeof(bufferA) - 1] = '\0';
    MultiByteToWideChar(CP_ACP, 0, bufferA, -1, bufferW, INTERNET_MAX_URL_LENGTH);


    len = ARRAY_SIZE(bufferW);
    dummy = 0;

    res = pParseURLFromOutsideSourceW(urlW, bufferW, &len, &dummy);
    WideCharToMultiByte(CP_ACP, 0, bufferW, -1, bufferA, sizeof(bufferA), ((void*)0), ((void*)0));
    ok( res == 1 && len == ParseURL_table[0].len &&
        !lstrcmpA(bufferA, ParseURL_table[0].newurl),
        "got %d and %d with '%s' (expected 1 and %d with '%s')\n",
        res, len, bufferA, ParseURL_table[0].len, ParseURL_table[0].newurl);


    maxlen = len;

    memset(bufferA, '#', sizeof(bufferA)-1);
    bufferA[sizeof(bufferA) - 1] = '\0';
    MultiByteToWideChar(CP_ACP, 0, bufferA, -1, bufferW, INTERNET_MAX_URL_LENGTH);
    len = maxlen+1;
    dummy = 0;
    res = pParseURLFromOutsideSourceW(urlW, bufferW, &len, &dummy);
    WideCharToMultiByte(CP_ACP, 0, bufferW, -1, bufferA, sizeof(bufferA), ((void*)0), ((void*)0));

    ok( res != 0 && len == ParseURL_table[0].len &&
        !lstrcmpA(bufferA, ParseURL_table[0].newurl),
        "+1: got %d and %d with '%s' (expected '!=0' and %d with '%s')\n",
        res, len, bufferA, ParseURL_table[0].len, ParseURL_table[0].newurl);

    len = maxlen;
    dummy = 0;
    res = pParseURLFromOutsideSourceW(urlW, bufferW, &len, &dummy);

    ok( res == 0 && len == ParseURL_table[0].len + 1,
        "==: got %d and %d (expected '0' and %d)\n",
        res, len, ParseURL_table[0].len + 1);

    len = maxlen - 1;
    dummy = 0;
    res = pParseURLFromOutsideSourceW(urlW, bufferW, &len, &dummy);

    ok( res == 0 && (len == ParseURL_table[0].len || len == ParseURL_table[0].len + 1),
        "-1: got %d and %d (expected '0' and %d or %d)\n",
        res, len, ParseURL_table[0].len, ParseURL_table[0].len + 1);

}
