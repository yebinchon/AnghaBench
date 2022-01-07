
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _T (char*) ;
 int _tunlink (int ) ;

__attribute__((used)) static int test_unlink_files(void)
{
    int result = 0;




    result |= _tunlink(_T("binary.dos"));
    result |= _tunlink(_T("binary.nix"));
    result |= _tunlink(_T("text.dos"));
    result |= _tunlink(_T("text.nix"));
    return result;
}
