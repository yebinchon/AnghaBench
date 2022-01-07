
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* psz_protocol; char const* psz_username; char const* psz_password; char const* psz_host; unsigned int i_port; char const* psz_path; char const* psz_option; } ;
typedef TYPE_1__ vlc_url_t ;


 scalar_t__ ENOSYS ;
 scalar_t__ errno ;
 int exit (int) ;
 int exitcode ;
 int fprintf (int ,char*,char const*,...) ;
 int stderr ;
 int test_compare (char const*,char const*,char const*) ;
 int vlc_UrlClean (TYPE_1__*) ;
 int vlc_UrlParse (TYPE_1__*,char const*) ;
 int vlc_UrlParseFixup (TYPE_1__*,char const*) ;

__attribute__((used)) static void test_url_parse_internal(const char *in, bool fixup,
                                    const char *protocol,
                                    const char *user, const char *pass,
                                    const char *host, unsigned port,
                                    const char *path, const char *option)
{
    vlc_url_t url;
    int ret = fixup ? vlc_UrlParseFixup(&url, in) : vlc_UrlParse(&url, in);



    if (protocol == ((void*)0) && user == ((void*)0) && pass == ((void*)0) && host == ((void*)0)
     && port == 0 && path == ((void*)0) && option == ((void*)0))
    {
        vlc_UrlClean(&url);

        if (ret != -1)
        {
            fprintf(stderr, "\"%s\" accepted, expected rejection\n", in);
            exit(2);
        }
        return;
    }

    test_compare(in, protocol, url.psz_protocol);
    test_compare(in, user, url.psz_username);
    test_compare(in, pass, url.psz_password);

    if (ret != 0 && errno == ENOSYS)
    {
        test_compare(in, ((void*)0), url.psz_host);
        exitcode = 77;
    }
    else
        test_compare(in, url.psz_host, host);

    if (url.i_port != port)
    {
        fprintf(stderr, "\"%s\" returned %u, expected %u\n", in, url.i_port,
                port);
        exit(2);
    }

    test_compare(in, path, url.psz_path);
    test_compare(in, option, url.psz_option);
    vlc_UrlClean(&url);
}
