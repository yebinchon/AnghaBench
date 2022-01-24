#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uintmax_t ;
struct vlc_http_resource {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int etags ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  jar ; 
 int lang ; 
 int offset ; 
 char** replies ; 
 int secure ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/ * ua ; 
 char* url ; 
 char* url_http ; 
 char* url_icyx ; 
 char* url_mmsh ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct vlc_http_resource*) ; 
 struct vlc_http_resource* FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct vlc_http_resource*) ; 
 char* FUNC8 (struct vlc_http_resource*) ; 
 int FUNC9 (struct vlc_http_resource*) ; 
 int FUNC10 (struct vlc_http_resource*) ; 
 char* FUNC11 (struct vlc_http_resource*) ; 
 int /*<<< orphan*/ * FUNC12 (struct vlc_http_resource*) ; 
 int FUNC13 (struct vlc_http_resource*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct vlc_http_resource*) ; 
 int /*<<< orphan*/  FUNC15 (struct vlc_http_resource*,char*,char*) ; 

int FUNC16(void)
{
    struct vlc_http_resource *f;
    char *str;

    jar = FUNC4();

    /* Request failure test */
    f = FUNC6(NULL, url, ua, NULL);
    FUNC0(f != NULL);
    FUNC15(f, NULL, NULL);
    FUNC15(f, "john", NULL);
    FUNC15(f, NULL, NULL);
    FUNC15(f, "john", "secret");
    FUNC15(f, NULL, NULL);
    FUNC13(f, 0);
    FUNC0(FUNC10(f) < 0);
    FUNC0(FUNC8(f) == NULL);
    FUNC0(FUNC9(f) == (uintmax_t)-1);
    FUNC0(!FUNC5(f));
    FUNC0(FUNC11(f) == NULL);
    FUNC0(FUNC12(f) == NULL);
    FUNC14(f);

    /* Non-seekable stream test */
    replies[0] = "HTTP/1.1 200 OK\r\n"
                 "ETag: \"foobar42\"\r\n"
                 "Content-Type: video/mpeg\r\n"
                 "\r\n";

    offset = 0;
    etags = true;
    f = FUNC6(NULL, url, ua, NULL);
    FUNC0(f != NULL);
    FUNC0(FUNC10(f) == 200);
    FUNC0(!FUNC5(f));
    FUNC0(FUNC9(f) == (uintmax_t)-1);
    str = FUNC11(f);
    FUNC0(str != NULL && !FUNC2(str, "video/mpeg"));
    FUNC1(str);

    /* Seek failure */
    replies[0] = "HTTP/1.1 200 OK\r\nETag: \"foobar42\"\r\n\r\n";

    FUNC0(FUNC13(f, offset = 1234) < 0);
    FUNC7(f);

    /* Seekable file test */
    replies[0] = "HTTP/1.1 206 Partial Content\r\n"
                 "Content-Range: bytes 0-2344/2345\r\n"
                 "ETag: W/\"foobar42\"\r\n"
                 "Last-Modified: Mon, 21 Oct 2013 20:13:22 GMT\r\n"
                 "\r\n";

    offset = 0;
    f = FUNC6(NULL, url, ua, NULL);
    FUNC0(f != NULL);
    FUNC0(FUNC5(f));
    FUNC0(FUNC9(f) == 2345);
    FUNC0(FUNC12(f) == NULL);

    /* Seek success */
    replies[0] = "HTTP/1.1 206 Partial Content\r\n"
                 "Content-Range: bytes 1234-3455/3456\r\n"
                 "ETag: W/\"foobar42\"\r\n"
                 "Last-Modified: Mon, 21 Oct 2013 20:13:22 GMT\r\n"
                 "\r\n";
    FUNC0(FUNC13(f, offset = 1234) == 0);
    FUNC0(FUNC5(f));
    FUNC0(FUNC9(f) == 3456);
    FUNC0(FUNC12(f) == NULL);

    /* Seek too far */
    replies[0] = "HTTP/1.1 416 Range Not Satisfiable\r\n"
                 "Content-Range: bytes */4567\r\n"
                 "ETag: W/\"foobar42\"\r\n"
                 "Last-Modified: Mon, 21 Oct 2013 20:13:22 GMT\r\n"
                 "\r\n";
    FUNC13(f, offset = 5678);
    FUNC0(FUNC5(f));
    FUNC0(FUNC9(f) == 4567);
    FUNC0(FUNC12(f) == NULL);
    FUNC7(f);

    /* Redirect */
    replies[0] = "HTTP/1.1 301 Permanent Redirect\r\n"
                 "Location: /somewhere/else/#here\r\n"
                 "\r\n";

    offset = 0;
    f = FUNC6(NULL, url, ua, NULL);
    FUNC0(f != NULL);
    FUNC0(!FUNC5(f));
    FUNC0(FUNC9(f) == (uintmax_t)-1);
    str = FUNC8(f);
    FUNC0(str != NULL);
    FUNC0(!FUNC2(str, "https://www.example.com:8443/somewhere/else/"));
    FUNC1(str);
    FUNC7(f);

    /* Continuation */
    replies[0] = "HTTP/1.1 100 Standby\r\n"
                 "\r\n";
    replies[1] = "HTTP/1.1 200 OK\r\n"
                 "Content-Length: 9999\r\n"
                 "\r\n";
    offset = 0;
    f = FUNC6(NULL, url, ua, NULL);
    FUNC0(f != NULL);
    FUNC0(FUNC9(f) == 9999);
    FUNC0(FUNC8(f) == NULL);
    FUNC7(f);

    /* No entity tags */
    replies[0] = "HTTP/1.1 206 Partial Content\r\n"
                 "Content-Range: bytes 0-2344/2345\r\n"
                 "Last-Modified: Mon, 21 Oct 2013 20:13:22 GMT\r\n"
                 "\r\n";

    offset = 0;
    etags = false;
    f = FUNC6(NULL, url, ua, NULL);
    FUNC0(f != NULL);
    FUNC0(FUNC5(f));

    replies[0] = "HTTP/1.1 206 Partial Content\r\n"
                 "Content-Range: bytes 1234-3455/3456\r\n"
                 "Last-Modified: Mon, 21 Oct 2013 20:13:22 GMT\r\n"
                 "\r\n";
    FUNC0(FUNC13(f, offset = 1234) == 0);
    FUNC7(f);

    /* Invalid responses */
    replies[0] = "HTTP/1.1 206 Partial Content\r\n"
                 "Content-Type: multipart/byteranges\r\n"
                 "\r\n";
    offset = 0;

    f = FUNC6(NULL, url, ua, NULL);
    FUNC0(f != NULL);
    FUNC0(FUNC9(f) == (uintmax_t)-1);

    replies[0] = "HTTP/1.1 206 Partial Content\r\n"
                 "Content-Range: seconds 60-120/180\r\n"
                 "\r\n";
    FUNC0(FUNC13(f, 0) == -1);

    /* Incomplete range */
    replies[0] = "HTTP/1.1 206 Partial Content\r\n"
                 "Content-Range: bytes 0-1233/*\r\n"
                 "\r\n";
    FUNC0(FUNC13(f, 0) == 0);
    FUNC0(FUNC9(f) == 1234);

    /* Extraneous range */
    replies[0] = "HTTP/1.1 200 OK\r\n"
                 "Content-Range: bytes 0-1233/1234\r\n"
                 "\r\n";
    FUNC0(FUNC13(f, 0) == 0);
    FUNC0(FUNC9(f) == (uintmax_t)-1);

    /* Non-negotiable language */
    replies[0] = "HTTP/1.1 406 Not Acceptable\r\n"
                 "\r\n";
    replies[1] = "HTTP/1.1 206 OK\r\n"
                 "Content-Range: bytes 0-1/2\r\n"
                 "\r\n";
    lang = 1;
    FUNC0(FUNC13(f, 0) == 0);
    FUNC0(FUNC5(f));
    FUNC0(FUNC9(f) == 2);

    /* Protocol redirect hacks - not over TLS */
    replies[0] = "HTTP/1.1 200 OK\r\n"
                 "Pragma: features\r\n"
                 "\r\n";
    FUNC0(FUNC13(f, 0) == 0);
    FUNC0(FUNC8(f) == NULL);

    replies[0] = "HTTP/1.1 200 OK\r\n"
                 "Icy-Name:CraptasticRadio\r\n"
                 "\r\n";
    FUNC0(FUNC13(f, 0) == 0);
    FUNC0(FUNC8(f) == NULL);

    FUNC7(f);

    secure = false;
    lang = -1;
    f = FUNC6(NULL, url_http, ua, NULL);
    FUNC0(f != NULL);

    /* Protocol redirect hacks - over insecure HTTP */
    replies[0] = "HTTP/1.1 200 OK\r\n"
                 "Pragma: features\r\n"
                 "\r\n";
    str = FUNC8(f);
    FUNC0(str != NULL && FUNC2(str, url_mmsh) == 0);
    FUNC1(str);

    replies[0] = "HTTP/1.1 200 OK\r\n"
                 "Icy-Name:CraptasticRadio\r\n"
                 "\r\n";
    FUNC13(f, 0);
    str = FUNC8(f);
    FUNC0(str != NULL && FUNC2(str, url_icyx) == 0);
    FUNC1(str);

    FUNC7(f);

    /* Dummy API calls */
    f = FUNC6(NULL, "ftp://localhost/foo", NULL, NULL);
    FUNC0(f == NULL);
    f = FUNC6(NULL, "/foo", NULL, NULL);
    FUNC0(f == NULL);
    f = FUNC6(NULL, "http://www.example.com", NULL, NULL);
    FUNC0(f != NULL);
    FUNC7(f);

    FUNC3(jar);
    return 0;
}