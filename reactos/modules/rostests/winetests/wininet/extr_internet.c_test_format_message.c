
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int out ;
typedef int * HMODULE ;
typedef scalar_t__ DWORD ;
typedef int CHAR ;


 int ERROR_INTERNET_CANNOT_CONNECT ;
 int ERROR_INTERNET_CONNECTION_ABORTED ;
 int ERROR_INTERNET_INTERNAL_ERROR ;
 int ERROR_INTERNET_INVALID_OPERATION ;
 int ERROR_INTERNET_INVALID_URL ;
 int ERROR_INTERNET_ITEM_NOT_FOUND ;
 int ERROR_INTERNET_NAME_NOT_RESOLVED ;
 int ERROR_INTERNET_OPERATION_CANCELLED ;
 int ERROR_INTERNET_SEC_CERT_CN_INVALID ;
 int ERROR_INTERNET_SEC_CERT_DATE_INVALID ;
 int ERROR_INTERNET_TIMEOUT ;
 int ERROR_INTERNET_UNRECOGNIZED_SCHEME ;
 int FORMAT_MESSAGE_FROM_HMODULE ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 scalar_t__ FormatMessageA (int ,int *,int ,int ,int *,int,int *) ;
 int LANG_NEUTRAL ;
 int MAKELANGID (int ,int ) ;
 int SUBLANG_NEUTRAL ;
 scalar_t__ broken (int) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_format_message(HMODULE hdll)
{
    DWORD ret;
    CHAR out[0x100];


    ret = FormatMessageA(FORMAT_MESSAGE_FROM_SYSTEM , ((void*)0), ERROR_INTERNET_TIMEOUT,
                         MAKELANGID(LANG_NEUTRAL, SUBLANG_NEUTRAL), out, sizeof(out), ((void*)0));
    ok(ret == 0, "FormatMessageA returned %d\n", ret);

    ret = FormatMessageA(FORMAT_MESSAGE_FROM_HMODULE, hdll, ERROR_INTERNET_TIMEOUT,
                         MAKELANGID(LANG_NEUTRAL, SUBLANG_NEUTRAL), out, sizeof(out), ((void*)0));
    ok(ret != 0, "FormatMessageA returned %d\n", ret);

    ret = FormatMessageA(FORMAT_MESSAGE_FROM_HMODULE, hdll, ERROR_INTERNET_INTERNAL_ERROR,
                         MAKELANGID(LANG_NEUTRAL, SUBLANG_NEUTRAL), out, sizeof(out), ((void*)0));
    ok(ret != 0, "FormatMessageA returned %d\n", ret);

    ret = FormatMessageA(FORMAT_MESSAGE_FROM_HMODULE, hdll, ERROR_INTERNET_INVALID_URL,
                         MAKELANGID(LANG_NEUTRAL, SUBLANG_NEUTRAL), out, sizeof(out), ((void*)0));
    ok(ret != 0, "FormatMessageA returned %d\n", ret);

    ret = FormatMessageA(FORMAT_MESSAGE_FROM_HMODULE, hdll, ERROR_INTERNET_UNRECOGNIZED_SCHEME,
                         MAKELANGID(LANG_NEUTRAL, SUBLANG_NEUTRAL), out, sizeof(out), ((void*)0));
    ok(ret != 0, "FormatMessageA returned %d\n", ret);

    ret = FormatMessageA(FORMAT_MESSAGE_FROM_HMODULE, hdll, ERROR_INTERNET_NAME_NOT_RESOLVED,
                         MAKELANGID(LANG_NEUTRAL, SUBLANG_NEUTRAL), out, sizeof(out), ((void*)0));
    ok(ret != 0, "FormatMessageA returned %d\n", ret);

    ret = FormatMessageA(FORMAT_MESSAGE_FROM_HMODULE, hdll, ERROR_INTERNET_INVALID_OPERATION,
                         MAKELANGID(LANG_NEUTRAL, SUBLANG_NEUTRAL), out, sizeof(out), ((void*)0));
    ok(ret != 0 || broken(!ret) , "FormatMessageA returned %d\n", ret);

    ret = FormatMessageA(FORMAT_MESSAGE_FROM_HMODULE, hdll, ERROR_INTERNET_OPERATION_CANCELLED,
                         MAKELANGID(LANG_NEUTRAL, SUBLANG_NEUTRAL), out, sizeof(out), ((void*)0));
    ok(ret != 0, "FormatMessageA returned %d\n", ret);

    ret = FormatMessageA(FORMAT_MESSAGE_FROM_HMODULE, hdll, ERROR_INTERNET_ITEM_NOT_FOUND,
                         MAKELANGID(LANG_NEUTRAL, SUBLANG_NEUTRAL), out, sizeof(out), ((void*)0));
    ok(ret != 0, "FormatMessageA returned %d\n", ret);

    ret = FormatMessageA(FORMAT_MESSAGE_FROM_HMODULE, hdll, ERROR_INTERNET_CANNOT_CONNECT,
                         MAKELANGID(LANG_NEUTRAL, SUBLANG_NEUTRAL), out, sizeof(out), ((void*)0));
    ok(ret != 0, "FormatMessageA returned %d\n", ret);

    ret = FormatMessageA(FORMAT_MESSAGE_FROM_HMODULE, hdll, ERROR_INTERNET_CONNECTION_ABORTED,
                         MAKELANGID(LANG_NEUTRAL, SUBLANG_NEUTRAL), out, sizeof(out), ((void*)0));
    ok(ret != 0, "FormatMessageA returned %d\n", ret);

    ret = FormatMessageA(FORMAT_MESSAGE_FROM_HMODULE, hdll, ERROR_INTERNET_SEC_CERT_DATE_INVALID,
                         MAKELANGID(LANG_NEUTRAL, SUBLANG_NEUTRAL), out, sizeof(out), ((void*)0));
    ok(ret != 0, "FormatMessageA returned %d\n", ret);

    ret = FormatMessageA(FORMAT_MESSAGE_FROM_HMODULE, hdll, ERROR_INTERNET_SEC_CERT_CN_INVALID,
                         MAKELANGID(LANG_NEUTRAL, SUBLANG_NEUTRAL), out, sizeof(out), ((void*)0));
    ok(ret != 0, "FormatMessageA returned %d\n", ret);
}
