
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;
typedef char CHAR ;


 scalar_t__ E_FAIL ;
 int INTERNET_MAX_URL_LENGTH ;
 int REG_DWORD ;
 int REG_SZ ;
 scalar_t__ S_OK ;
 int appdata ;
 scalar_t__ broken (int) ;
 int common_appdata ;
 int default_page_url ;
 int does_not_exist ;
 int lstrlenA (char*) ;
 int memset (char*,char,int) ;
 int ok (int,char*,scalar_t__,...) ;
 scalar_t__ pURLSubRegQueryA (int ,int ,int ,char*,int,int) ;
 int regpath_iemain ;
 int regpath_shellfolders ;
 int skip (char*) ;
 int start_page ;

__attribute__((used)) static void test_URLSubRegQueryA(void)
{
    CHAR buffer[INTERNET_MAX_URL_LENGTH];
    HRESULT hr;
    DWORD used;
    DWORD len;

    if (!pURLSubRegQueryA) {
        skip("URLSubRegQueryA not found\n");
        return;
    }

    memset(buffer, '#', sizeof(buffer)-1);
    buffer[sizeof(buffer)-1] = '\0';

    hr = pURLSubRegQueryA(regpath_iemain, default_page_url, REG_SZ, buffer, INTERNET_MAX_URL_LENGTH, -1);
    ok(hr == E_FAIL || hr == S_OK, "got 0x%x (expected E_FAIL or S_OK)\n", hr);

    memset(buffer, '#', sizeof(buffer)-1);
    buffer[sizeof(buffer)-1] = '\0';

    hr = pURLSubRegQueryA(regpath_iemain, start_page, REG_SZ, buffer, INTERNET_MAX_URL_LENGTH, -1);
    len = lstrlenA(buffer);

    ok(hr == S_OK, "got 0x%x and %d (expected S_OK)\n", hr, len);


    memset(buffer, '#', sizeof(buffer)-1);
    buffer[sizeof(buffer)-1] = '\0';
    hr = pURLSubRegQueryA(regpath_iemain, start_page, REG_SZ, buffer, len+1, -1);
    used = lstrlenA(buffer);

    ok((hr == S_OK) && (used == len),
        "got 0x%x and %d (expected S_OK and %d)\n", hr, used, len);


    memset(buffer, '#', sizeof(buffer)-1);
    buffer[sizeof(buffer)-1] = '\0';
    hr = pURLSubRegQueryA(regpath_iemain, start_page, REG_SZ, buffer, len, -1);
    used = lstrlenA(buffer);
    ok((hr == S_OK) && (used == len - 1),
        "got 0x%x and %d (expected S_OK and %d)\n", hr, used, len - 1);


    if (len > 1) {
        memset(buffer, '#', sizeof(buffer)-1);
        buffer[sizeof(buffer)-1] = '\0';
        hr = pURLSubRegQueryA(regpath_iemain, start_page, REG_SZ, buffer, len-1, -1);
        used = lstrlenA(buffer);
        ok((hr == S_OK) && (used == (len - 2)),
            "got 0x%x and %d (expected S_OK and %d)\n", hr, used, len - 2);
    }


    memset(buffer, '#', sizeof(buffer)-1);
    buffer[sizeof(buffer)-1] = '\0';
    hr = pURLSubRegQueryA(regpath_iemain, start_page, REG_SZ, buffer, 1, -1);
    used = lstrlenA(buffer);
    ok((hr == S_OK) && !used,
        "got 0x%x and %d (expected S_OK and 0)\n", hr, used);



    memset(buffer, '#', sizeof(buffer)-1);
    buffer[sizeof(buffer)-1] = '\0';
    hr = pURLSubRegQueryA(regpath_iemain, start_page, REG_SZ, buffer, 0, -1);
    used = lstrlenA(buffer);
    ok( (hr == S_OK) &&
        ((used == INTERNET_MAX_URL_LENGTH - 1) || broken(used == 0)) ,
        "got 0x%x and %d (expected S_OK and INTERNET_MAX_URL_LENGTH - 1)\n",
        hr, used);


    hr = pURLSubRegQueryA(regpath_iemain, start_page, REG_SZ, ((void*)0), 0, -1);
    ok(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);


    hr = pURLSubRegQueryA(regpath_iemain, start_page, REG_SZ, ((void*)0), INTERNET_MAX_URL_LENGTH, -1);
    ok(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);


    memset(buffer, '#', sizeof(buffer)-1);
    buffer[sizeof(buffer)-1] = '\0';
    hr = pURLSubRegQueryA(regpath_iemain, does_not_exist, REG_SZ, buffer, INTERNET_MAX_URL_LENGTH, -1);

    ok((hr == E_FAIL), "got 0x%x (expected E_FAIL)\n", hr);


    memset(buffer, '#', sizeof(buffer)-1);
    buffer[sizeof(buffer)-1] = '\0';
    hr = pURLSubRegQueryA(regpath_iemain, start_page, REG_DWORD, buffer, INTERNET_MAX_URL_LENGTH, -1);
    used = lstrlenA(buffer);
    ok((hr == S_OK) && (used == len),
        "got 0x%x and %d (expected S_OK and %d)\n", hr, used, len);


    memset(buffer, '#', sizeof(buffer)-1);
    buffer[sizeof(buffer)-1] = '\0';
    hr = pURLSubRegQueryA(regpath_shellfolders, appdata, REG_SZ, buffer, INTERNET_MAX_URL_LENGTH, -1);
    used = lstrlenA(buffer);
    ok(hr == S_OK, "got 0x%x and %d (expected S_OK)\n", hr, used);

    memset(buffer, '#', sizeof(buffer)-1);
    buffer[sizeof(buffer)-1] = '\0';
    hr = pURLSubRegQueryA(regpath_shellfolders, common_appdata, REG_SZ, buffer, INTERNET_MAX_URL_LENGTH, -1);
    used = lstrlenA(buffer);
    ok(hr == S_OK, "got 0x%x and %d (expected S_OK)\n", hr, used);


}
