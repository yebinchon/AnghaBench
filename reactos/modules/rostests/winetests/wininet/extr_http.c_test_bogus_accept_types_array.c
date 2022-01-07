
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef int * HINTERNET ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_HTTP_HEADER_NOT_FOUND ;
 char* GetLastError () ;
 int HTTP_QUERY_ACCEPT ;
 int HTTP_QUERY_FLAG_REQUEST_HEADERS ;
 int * HttpOpenRequestA (int *,char*,char*,char*,char*,char const**,int ,int ) ;
 int HttpQueryInfoA (int *,int,char*,scalar_t__*,int *) ;
 int INTERNET_FLAG_FORMS_SUBMIT ;
 int INTERNET_OPEN_TYPE_DIRECT ;
 int INTERNET_SERVICE_HTTP ;
 int InternetCloseHandle (int *) ;
 int * InternetConnectA (int *,char*,int,int *,int *,int ,int ,int ) ;
 int * InternetOpenA (char*,int ,char*,char*,int ) ;
 int SetLastError (int) ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void test_bogus_accept_types_array(void)
{
    HINTERNET ses, con, req;
    static const char *types[] = { (const char *)6240, "*/*", "%p", "", (const char *)0xffffffff, "*/*", ((void*)0) };
    DWORD size, error;
    char buffer[32];
    BOOL ret;

    ses = InternetOpenA("MERONG(0.9/;p)", INTERNET_OPEN_TYPE_DIRECT, "", "", 0);
    con = InternetConnectA(ses, "www.winehq.org", 80, ((void*)0), ((void*)0), INTERNET_SERVICE_HTTP, 0, 0);
    req = HttpOpenRequestA(con, "POST", "/post/post_action.php", "HTTP/1.0", "", types, INTERNET_FLAG_FORMS_SUBMIT, 0);

    ok(req != ((void*)0), "HttpOpenRequest failed: %u\n", GetLastError());

    buffer[0] = 0;
    size = sizeof(buffer);
    SetLastError(0xdeadbeef);
    ret = HttpQueryInfoA(req, HTTP_QUERY_ACCEPT | HTTP_QUERY_FLAG_REQUEST_HEADERS, buffer, &size, ((void*)0));
    error = GetLastError();
    ok(!ret || broken(ret), "HttpQueryInfo succeeded\n");
    if (!ret) ok(error == ERROR_HTTP_HEADER_NOT_FOUND, "expected ERROR_HTTP_HEADER_NOT_FOUND, got %u\n", error);
    ok(broken(!strcmp(buffer, ", */*, %p, , , */*")) ||
       broken(!strcmp(buffer, "*/*, %p, */*")) ||
       !strcmp(buffer, ""), "got '%s' expected ''\n", buffer);

    InternetCloseHandle(req);
    InternetCloseHandle(con);
    InternetCloseHandle(ses);
}
