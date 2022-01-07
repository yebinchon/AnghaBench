
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int FILE_TEST ;
 int FTP_TEST ;
 int HTTPS_TEST ;
 int HTTP_TEST ;
 int MK_TEST ;

__attribute__((used)) static BOOL is_urlmon_protocol(int prot)
{
    return prot == FILE_TEST || prot == HTTP_TEST || prot == HTTPS_TEST || prot == FTP_TEST || prot == MK_TEST;
}
