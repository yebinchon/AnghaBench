
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;
typedef scalar_t__ DWORD ;


 int CloseHandle (int ) ;
 scalar_t__ DuplicateToken (int ,int ,int *) ;
 int GetCurrentProcess () ;
 scalar_t__ GetLastError () ;
 scalar_t__ OpenProcessToken (int ,int,int *) ;
 int SecurityImpersonation ;
 int TOKEN_DUPLICATE ;
 int TOKEN_QUERY ;
 scalar_t__ TokenImpersonation ;
 scalar_t__ TokenPrimary ;
 int ok (int,char*,...) ;
 int test_event_security (int ) ;
 int test_file_security (int ) ;
 int test_filemap_security () ;
 int test_mutex_security (int ) ;
 int test_named_pipe_security (int ) ;
 int test_process_access () ;
 int test_semaphore_security (int ) ;
 int test_thread_security () ;
 scalar_t__ validate_impersonation_token (int ,scalar_t__*) ;

__attribute__((used)) static void test_kernel_objects_security(void)
{
    HANDLE token, process_token;
    DWORD ret, token_type;

    ret = OpenProcessToken(GetCurrentProcess(), TOKEN_DUPLICATE | TOKEN_QUERY, &process_token);
    ok(ret, "OpenProcessToken error %d\n", GetLastError());

    ret = validate_impersonation_token(process_token, &token_type);
    ok(token_type == TokenPrimary, "expected TokenPrimary, got %d\n", token_type);
    ok(!ret, "access token should not be an impersonation token\n");

    ret = DuplicateToken(process_token, SecurityImpersonation, &token);
    ok(ret, "DuplicateToken error %d\n", GetLastError());

    ret = validate_impersonation_token(token, &token_type);
    ok(ret, "access token should be a valid impersonation token\n");
    ok(token_type == TokenImpersonation, "expected TokenImpersonation, got %d\n", token_type);

    test_mutex_security(token);
    test_event_security(token);
    test_named_pipe_security(token);
    test_semaphore_security(token);
    test_file_security(token);
    test_filemap_security();
    test_thread_security();
    test_process_access();


    CloseHandle(process_token);
    CloseHandle(token);
}
