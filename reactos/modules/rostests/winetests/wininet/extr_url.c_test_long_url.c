
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int long_buf ;
struct TYPE_6__ {char* member_0; int member_2; int member_4; int member_5; int member_6; int member_7; int member_8; int member_10; int member_12; int member_13; int member_14; int member_15; char* member_16; char* member_17; char* member_18; char* member_19; char* member_20; char* member_21; int member_11; int member_9; int member_3; int member_1; } ;
typedef TYPE_1__ crack_url_test_t ;
struct TYPE_7__ {char* lpszExtraInfo; char* lpszScheme; } ;
typedef TYPE_2__ URL_COMPONENTSA ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ GetLastError () ;
 int INTERNET_SCHEME_HTTP ;
 scalar_t__ InternetCrackUrlA (char*,int ,int ,TYPE_2__*) ;
 int memset (char*,char,int) ;
 int ok (int,char*,scalar_t__,scalar_t__) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int test_crack_url (TYPE_1__*) ;
 int zero_compsA (TYPE_2__*,int,int ,int ,int ,int ,int) ;

__attribute__((used)) static void test_long_url(void)
{
    char long_buf[6000];
    char long_url[sizeof(long_buf) + 1000];
    crack_url_test_t test_long_path =
        {long_url, 0, 4, INTERNET_SCHEME_HTTP, 7, 14, -1, 80, -1, 0, -1, 0, 21, sizeof(long_buf)-1, -1, 0,
         "http", "www.winehq.org", "", "", long_buf, ""};
    crack_url_test_t test_long_extra =
        {long_url, 0, 4, INTERNET_SCHEME_HTTP, 7, 14, -1, 80, -1, 0, -1, 0, 21, 6, 27, sizeof(long_buf)-1,
         "http", "www.winehq.org", "", "", "/path/", long_buf};
    URL_COMPONENTSA url_comp;
    BOOL b;

    memset(long_buf, 'x', sizeof(long_buf));
    long_buf[0] = '/';
    long_buf[sizeof(long_buf)-1] = 0;

    strcpy(long_url, "http://www.winehq.org");
    strcat(long_url, long_buf);
    test_crack_url(&test_long_path);

    strcpy(long_url, "http://www.winehq.org/path/");
    long_buf[0] = '#';
    strcat(long_url, long_buf);
    test_crack_url(&test_long_extra);

    zero_compsA(&url_comp, 0, 0, 0, 0, 0, 100);
    url_comp.lpszExtraInfo = long_buf;
    b = InternetCrackUrlA(long_url, strlen(long_url), 0, &url_comp);
    ok(!b && GetLastError() == ERROR_INSUFFICIENT_BUFFER, "InternetCrackUrlA returned %x with error %d\n", b, GetLastError());

    zero_compsA(&url_comp, 4, 0, 0, 0, 0, 0);
    url_comp.lpszScheme = long_buf;
    b = InternetCrackUrlA(long_url, strlen(long_url), 0, &url_comp);
    ok(!b && GetLastError() == ERROR_INSUFFICIENT_BUFFER, "InternetCrackUrlA returned %x with error %d\n", b, GetLastError());
}
