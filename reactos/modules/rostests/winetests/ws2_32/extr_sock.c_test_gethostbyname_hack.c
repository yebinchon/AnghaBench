
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {int h_length; int** h_addr_list; } ;
typedef int BYTE ;


 int WSAGetLastError () ;
 struct hostent* gethostbyname (char*) ;
 int gethostname (char*,int) ;
 int h_errno ;
 scalar_t__ memcmp (int*,int*,int) ;
 int ok (int,char*,...) ;
 int skip (char*,...) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void test_gethostbyname_hack(void)
{
    struct hostent *he;
    char name[256];
    static BYTE loopback[] = {127, 0, 0, 1};
    static BYTE magic_loopback[] = {127, 12, 34, 56};
    int ret;

    ret = gethostname(name, 256);
    ok(ret == 0, "gethostname() call failed: %d\n", WSAGetLastError());

    he = gethostbyname("localhost");
    ok(he != ((void*)0), "gethostbyname(\"localhost\") failed: %d\n", h_errno);
    if(he)
    {
        if(he->h_length != 4)
        {
            skip("h_length is %d, not IPv4, skipping test.\n", he->h_length);
            return;
        }

        ok(memcmp(he->h_addr_list[0], loopback, he->h_length) == 0,
           "gethostbyname(\"localhost\") returned %u.%u.%u.%u\n",
           he->h_addr_list[0][0], he->h_addr_list[0][1], he->h_addr_list[0][2],
           he->h_addr_list[0][3]);
    }

    if(strcmp(name, "localhost") == 0)
    {
        skip("hostname seems to be \"localhost\", skipping test.\n");
        return;
    }

    he = gethostbyname(name);
    ok(he != ((void*)0), "gethostbyname(\"%s\") failed: %d\n", name, h_errno);
    if(he)
    {
        if(he->h_length != 4)
        {
            skip("h_length is %d, not IPv4, skipping test.\n", he->h_length);
            return;
        }

        if (he->h_addr_list[0][0] == 127)
        {
            ok(memcmp(he->h_addr_list[0], magic_loopback, he->h_length) == 0,
               "gethostbyname(\"%s\") returned %u.%u.%u.%u not 127.12.34.56\n",
               name, he->h_addr_list[0][0], he->h_addr_list[0][1],
               he->h_addr_list[0][2], he->h_addr_list[0][3]);
        }
    }

    gethostbyname("nonexistent.winehq.org");


}
