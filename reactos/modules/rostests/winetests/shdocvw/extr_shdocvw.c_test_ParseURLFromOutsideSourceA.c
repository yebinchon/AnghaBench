
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int buffer ;
struct TYPE_3__ {int len; int newurl; int url; } ;
typedef int DWORD ;
typedef char CHAR ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int INTERNET_MAX_URL_LENGTH ;
 TYPE_1__* ParseURL_table ;
 int lstrcmpA (char*,int ) ;
 int memset (char*,char,int) ;
 int ok (int,char*,int,int,int,...) ;
 int pParseURLFromOutsideSourceA (int ,char*,int*,int*) ;
 int skip (char*) ;

__attribute__((used)) static void test_ParseURLFromOutsideSourceA(void)
{
    CHAR buffer[INTERNET_MAX_URL_LENGTH];
    DWORD dummy;
    DWORD maxlen;
    DWORD len;
    DWORD res;
    int i;

    if (!pParseURLFromOutsideSourceA) {
        skip("ParseURLFromOutsideSourceA not found\n");
        return;
    }

    for(i = 0; i < ARRAY_SIZE(ParseURL_table); i++) {
        memset(buffer, '#', sizeof(buffer)-1);
        buffer[sizeof(buffer)-1] = '\0';
        len = sizeof(buffer);
        dummy = 0;

        res = pParseURLFromOutsideSourceA(ParseURL_table[i].url, buffer, &len, &dummy);

        ok( res == (ParseURL_table[i].len+1) && len == ParseURL_table[i].len &&
            !lstrcmpA(buffer, ParseURL_table[i].newurl),
            "#%d: got %d and %d with '%s' (expected %d and %d with '%s')\n",
            i, res, len, buffer, ParseURL_table[i].len+1, ParseURL_table[i].len, ParseURL_table[i].newurl);



        if (i > 4) continue;

        maxlen = len;

        memset(buffer, '#', sizeof(buffer)-1);
        buffer[sizeof(buffer)-1] = '\0';
        len = maxlen + 1;
        dummy = 0;
        res = pParseURLFromOutsideSourceA(ParseURL_table[i].url, buffer, &len, &dummy);
        ok( res != 0 && len == ParseURL_table[i].len &&
            !lstrcmpA(buffer, ParseURL_table[i].newurl),
            "#%d (+1): got %d and %d with '%s' (expected '!=0' and %d with '%s')\n",
            i, res, len, buffer, ParseURL_table[i].len, ParseURL_table[i].newurl);

        memset(buffer, '#', sizeof(buffer)-1);
        buffer[sizeof(buffer)-1] = '\0';
        len = maxlen;
        dummy = 0;
        res = pParseURLFromOutsideSourceA(ParseURL_table[i].url, buffer, &len, &dummy);

        ok( res == 0 && len == ParseURL_table[i].len + 1,
            "#%d (==): got %d and %d (expected '0' and %d)\n",
            i, res, len, ParseURL_table[i].len + 1);

        memset(buffer, '#', sizeof(buffer)-1);
        buffer[sizeof(buffer)-1] = '\0';
        len = maxlen-1;
        dummy = 0;
        res = pParseURLFromOutsideSourceA(ParseURL_table[i].url, buffer, &len, &dummy);

        ok( res == 0 && (len == ParseURL_table[i].len || len == ParseURL_table[i].len + 1),
            "#%d (-1): got %d and %d (expected '0' and %d or %d)\n",
            i, res, len, ParseURL_table[i].len, ParseURL_table[i].len + 1);

        memset(buffer, '#', sizeof(buffer)-1);
        buffer[sizeof(buffer)-1] = '\0';
        len = maxlen+1;
        dummy = 0;
        res = pParseURLFromOutsideSourceA(ParseURL_table[i].url, ((void*)0), &len, &dummy);

        ok( res == 0 && len == ParseURL_table[i].len,
            "#%d (buffer): got %d and %d (expected '0' and %d)\n",
            i, res, len, ParseURL_table[i].len);

        if (0) {

            pParseURLFromOutsideSourceA(ParseURL_table[i].url, buffer, ((void*)0), &dummy);
        }

        memset(buffer, '#', sizeof(buffer)-1);
        buffer[sizeof(buffer)-1] = '\0';
        len = maxlen+1;
        dummy = 0;
        res = pParseURLFromOutsideSourceA(ParseURL_table[i].url, buffer, &len, ((void*)0));
        ok( res != 0 && len == ParseURL_table[i].len &&
            !lstrcmpA(buffer, ParseURL_table[i].newurl),
            "#%d (unknown): got %d and %d with '%s' (expected '!=0' and %d with '%s')\n",
            i, res, len, buffer, ParseURL_table[i].len, ParseURL_table[i].newurl);
    }
}
