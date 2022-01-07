
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type ;
typedef int sil ;
typedef int TOKEN_TYPE ;
typedef int TOKEN_PRIMARY_GROUP ;
typedef int TOKEN_OWNER ;
typedef int TOKEN_DEFAULT_DACL ;
typedef int SECURITY_IMPERSONATION_LEVEL ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int ERROR_INSUFFICIENT_BUFFER ;
 int FALSE ;
 int GetLastError () ;
 int GetTokenInformation (int ,int ,int*,int,int*) ;
 int SecurityImpersonation ;
 int SetLastError (int) ;
 int TRUE ;
 int TokenDefaultDacl ;
 int TokenImpersonation ;
 int TokenImpersonationLevel ;
 int TokenOwner ;
 int TokenPrimary ;
 int TokenPrimaryGroup ;
 int TokenType ;
 int ok (int,char*,...) ;

__attribute__((used)) static BOOL validate_impersonation_token(HANDLE token, DWORD *token_type)
{
    DWORD ret, needed;
    TOKEN_TYPE type;
    SECURITY_IMPERSONATION_LEVEL sil;

    type = 0xdeadbeef;
    needed = 0;
    SetLastError(0xdeadbeef);
    ret = GetTokenInformation(token, TokenType, &type, sizeof(type), &needed);
    ok(ret, "GetTokenInformation error %d\n", GetLastError());
    ok(needed == sizeof(type), "GetTokenInformation should return required buffer length\n");
    ok(type == TokenPrimary || type == TokenImpersonation, "expected TokenPrimary or TokenImpersonation, got %d\n", type);

    *token_type = type;
    if (type != TokenImpersonation) return FALSE;

    needed = 0;
    SetLastError(0xdeadbeef);
    ret = GetTokenInformation(token, TokenImpersonationLevel, &sil, sizeof(sil), &needed);
    ok(ret, "GetTokenInformation error %d\n", GetLastError());
    ok(needed == sizeof(sil), "GetTokenInformation should return required buffer length\n");
    ok(sil == SecurityImpersonation, "expected SecurityImpersonation, got %d\n", sil);

    needed = 0xdeadbeef;
    SetLastError(0xdeadbeef);
    ret = GetTokenInformation(token, TokenDefaultDacl, ((void*)0), 0, &needed);
    ok(!ret, "GetTokenInformation should fail\n");
    ok(GetLastError() == ERROR_INSUFFICIENT_BUFFER, "expected ERROR_INSUFFICIENT_BUFFER, got %d\n", GetLastError());
    ok(needed != 0xdeadbeef, "GetTokenInformation should return required buffer length\n");
    ok(needed > sizeof(TOKEN_DEFAULT_DACL), "GetTokenInformation returned empty default DACL\n");

    needed = 0xdeadbeef;
    SetLastError(0xdeadbeef);
    ret = GetTokenInformation(token, TokenOwner, ((void*)0), 0, &needed);
    ok(!ret, "GetTokenInformation should fail\n");
    ok(GetLastError() == ERROR_INSUFFICIENT_BUFFER, "expected ERROR_INSUFFICIENT_BUFFER, got %d\n", GetLastError());
    ok(needed != 0xdeadbeef, "GetTokenInformation should return required buffer length\n");
    ok(needed > sizeof(TOKEN_OWNER), "GetTokenInformation returned empty token owner\n");

    needed = 0xdeadbeef;
    SetLastError(0xdeadbeef);
    ret = GetTokenInformation(token, TokenPrimaryGroup, ((void*)0), 0, &needed);
    ok(!ret, "GetTokenInformation should fail\n");
    ok(GetLastError() == ERROR_INSUFFICIENT_BUFFER, "expected ERROR_INSUFFICIENT_BUFFER, got %d\n", GetLastError());
    ok(needed != 0xdeadbeef, "GetTokenInformation should return required buffer length\n");
    ok(needed > sizeof(TOKEN_PRIMARY_GROUP), "GetTokenInformation returned empty token primary group\n");

    return TRUE;
}
