
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct vlc_http_resource {int dummy; } ;


 int assert (int) ;
 int etags ;
 int free (char*) ;
 int jar ;
 int lang ;
 int offset ;
 char** replies ;
 int secure ;
 scalar_t__ strcmp (char*,char*) ;
 int * ua ;
 char* url ;
 char* url_http ;
 char* url_icyx ;
 char* url_mmsh ;
 int vlc_http_cookies_destroy (int ) ;
 int vlc_http_cookies_new () ;
 int vlc_http_file_can_seek (struct vlc_http_resource*) ;
 struct vlc_http_resource* vlc_http_file_create (int *,char*,int *,int *) ;
 int vlc_http_file_destroy (struct vlc_http_resource*) ;
 char* vlc_http_file_get_redirect (struct vlc_http_resource*) ;
 int vlc_http_file_get_size (struct vlc_http_resource*) ;
 int vlc_http_file_get_status (struct vlc_http_resource*) ;
 char* vlc_http_file_get_type (struct vlc_http_resource*) ;
 int * vlc_http_file_read (struct vlc_http_resource*) ;
 int vlc_http_file_seek (struct vlc_http_resource*,int) ;
 int vlc_http_res_destroy (struct vlc_http_resource*) ;
 int vlc_http_res_set_login (struct vlc_http_resource*,char*,char*) ;

int main(void)
{
    struct vlc_http_resource *f;
    char *str;

    jar = vlc_http_cookies_new();


    f = vlc_http_file_create(((void*)0), url, ua, ((void*)0));
    assert(f != ((void*)0));
    vlc_http_res_set_login(f, ((void*)0), ((void*)0));
    vlc_http_res_set_login(f, "john", ((void*)0));
    vlc_http_res_set_login(f, ((void*)0), ((void*)0));
    vlc_http_res_set_login(f, "john", "secret");
    vlc_http_res_set_login(f, ((void*)0), ((void*)0));
    vlc_http_file_seek(f, 0);
    assert(vlc_http_file_get_status(f) < 0);
    assert(vlc_http_file_get_redirect(f) == ((void*)0));
    assert(vlc_http_file_get_size(f) == (uintmax_t)-1);
    assert(!vlc_http_file_can_seek(f));
    assert(vlc_http_file_get_type(f) == ((void*)0));
    assert(vlc_http_file_read(f) == ((void*)0));
    vlc_http_res_destroy(f);


    replies[0] = "HTTP/1.1 200 OK\r\n"
                 "ETag: \"foobar42\"\r\n"
                 "Content-Type: video/mpeg\r\n"
                 "\r\n";

    offset = 0;
    etags = 1;
    f = vlc_http_file_create(((void*)0), url, ua, ((void*)0));
    assert(f != ((void*)0));
    assert(vlc_http_file_get_status(f) == 200);
    assert(!vlc_http_file_can_seek(f));
    assert(vlc_http_file_get_size(f) == (uintmax_t)-1);
    str = vlc_http_file_get_type(f);
    assert(str != ((void*)0) && !strcmp(str, "video/mpeg"));
    free(str);


    replies[0] = "HTTP/1.1 200 OK\r\nETag: \"foobar42\"\r\n\r\n";

    assert(vlc_http_file_seek(f, offset = 1234) < 0);
    vlc_http_file_destroy(f);


    replies[0] = "HTTP/1.1 206 Partial Content\r\n"
                 "Content-Range: bytes 0-2344/2345\r\n"
                 "ETag: W/\"foobar42\"\r\n"
                 "Last-Modified: Mon, 21 Oct 2013 20:13:22 GMT\r\n"
                 "\r\n";

    offset = 0;
    f = vlc_http_file_create(((void*)0), url, ua, ((void*)0));
    assert(f != ((void*)0));
    assert(vlc_http_file_can_seek(f));
    assert(vlc_http_file_get_size(f) == 2345);
    assert(vlc_http_file_read(f) == ((void*)0));


    replies[0] = "HTTP/1.1 206 Partial Content\r\n"
                 "Content-Range: bytes 1234-3455/3456\r\n"
                 "ETag: W/\"foobar42\"\r\n"
                 "Last-Modified: Mon, 21 Oct 2013 20:13:22 GMT\r\n"
                 "\r\n";
    assert(vlc_http_file_seek(f, offset = 1234) == 0);
    assert(vlc_http_file_can_seek(f));
    assert(vlc_http_file_get_size(f) == 3456);
    assert(vlc_http_file_read(f) == ((void*)0));


    replies[0] = "HTTP/1.1 416 Range Not Satisfiable\r\n"
                 "Content-Range: bytes */4567\r\n"
                 "ETag: W/\"foobar42\"\r\n"
                 "Last-Modified: Mon, 21 Oct 2013 20:13:22 GMT\r\n"
                 "\r\n";
    vlc_http_file_seek(f, offset = 5678);
    assert(vlc_http_file_can_seek(f));
    assert(vlc_http_file_get_size(f) == 4567);
    assert(vlc_http_file_read(f) == ((void*)0));
    vlc_http_file_destroy(f);


    replies[0] = "HTTP/1.1 301 Permanent Redirect\r\n"
                 "Location: /somewhere/else/#here\r\n"
                 "\r\n";

    offset = 0;
    f = vlc_http_file_create(((void*)0), url, ua, ((void*)0));
    assert(f != ((void*)0));
    assert(!vlc_http_file_can_seek(f));
    assert(vlc_http_file_get_size(f) == (uintmax_t)-1);
    str = vlc_http_file_get_redirect(f);
    assert(str != ((void*)0));
    assert(!strcmp(str, "https://www.example.com:8443/somewhere/else/"));
    free(str);
    vlc_http_file_destroy(f);


    replies[0] = "HTTP/1.1 100 Standby\r\n"
                 "\r\n";
    replies[1] = "HTTP/1.1 200 OK\r\n"
                 "Content-Length: 9999\r\n"
                 "\r\n";
    offset = 0;
    f = vlc_http_file_create(((void*)0), url, ua, ((void*)0));
    assert(f != ((void*)0));
    assert(vlc_http_file_get_size(f) == 9999);
    assert(vlc_http_file_get_redirect(f) == ((void*)0));
    vlc_http_file_destroy(f);


    replies[0] = "HTTP/1.1 206 Partial Content\r\n"
                 "Content-Range: bytes 0-2344/2345\r\n"
                 "Last-Modified: Mon, 21 Oct 2013 20:13:22 GMT\r\n"
                 "\r\n";

    offset = 0;
    etags = 0;
    f = vlc_http_file_create(((void*)0), url, ua, ((void*)0));
    assert(f != ((void*)0));
    assert(vlc_http_file_can_seek(f));

    replies[0] = "HTTP/1.1 206 Partial Content\r\n"
                 "Content-Range: bytes 1234-3455/3456\r\n"
                 "Last-Modified: Mon, 21 Oct 2013 20:13:22 GMT\r\n"
                 "\r\n";
    assert(vlc_http_file_seek(f, offset = 1234) == 0);
    vlc_http_file_destroy(f);


    replies[0] = "HTTP/1.1 206 Partial Content\r\n"
                 "Content-Type: multipart/byteranges\r\n"
                 "\r\n";
    offset = 0;

    f = vlc_http_file_create(((void*)0), url, ua, ((void*)0));
    assert(f != ((void*)0));
    assert(vlc_http_file_get_size(f) == (uintmax_t)-1);

    replies[0] = "HTTP/1.1 206 Partial Content\r\n"
                 "Content-Range: seconds 60-120/180\r\n"
                 "\r\n";
    assert(vlc_http_file_seek(f, 0) == -1);


    replies[0] = "HTTP/1.1 206 Partial Content\r\n"
                 "Content-Range: bytes 0-1233/*\r\n"
                 "\r\n";
    assert(vlc_http_file_seek(f, 0) == 0);
    assert(vlc_http_file_get_size(f) == 1234);


    replies[0] = "HTTP/1.1 200 OK\r\n"
                 "Content-Range: bytes 0-1233/1234\r\n"
                 "\r\n";
    assert(vlc_http_file_seek(f, 0) == 0);
    assert(vlc_http_file_get_size(f) == (uintmax_t)-1);


    replies[0] = "HTTP/1.1 406 Not Acceptable\r\n"
                 "\r\n";
    replies[1] = "HTTP/1.1 206 OK\r\n"
                 "Content-Range: bytes 0-1/2\r\n"
                 "\r\n";
    lang = 1;
    assert(vlc_http_file_seek(f, 0) == 0);
    assert(vlc_http_file_can_seek(f));
    assert(vlc_http_file_get_size(f) == 2);


    replies[0] = "HTTP/1.1 200 OK\r\n"
                 "Pragma: features\r\n"
                 "\r\n";
    assert(vlc_http_file_seek(f, 0) == 0);
    assert(vlc_http_file_get_redirect(f) == ((void*)0));

    replies[0] = "HTTP/1.1 200 OK\r\n"
                 "Icy-Name:CraptasticRadio\r\n"
                 "\r\n";
    assert(vlc_http_file_seek(f, 0) == 0);
    assert(vlc_http_file_get_redirect(f) == ((void*)0));

    vlc_http_file_destroy(f);

    secure = 0;
    lang = -1;
    f = vlc_http_file_create(((void*)0), url_http, ua, ((void*)0));
    assert(f != ((void*)0));


    replies[0] = "HTTP/1.1 200 OK\r\n"
                 "Pragma: features\r\n"
                 "\r\n";
    str = vlc_http_file_get_redirect(f);
    assert(str != ((void*)0) && strcmp(str, url_mmsh) == 0);
    free(str);

    replies[0] = "HTTP/1.1 200 OK\r\n"
                 "Icy-Name:CraptasticRadio\r\n"
                 "\r\n";
    vlc_http_file_seek(f, 0);
    str = vlc_http_file_get_redirect(f);
    assert(str != ((void*)0) && strcmp(str, url_icyx) == 0);
    free(str);

    vlc_http_file_destroy(f);


    f = vlc_http_file_create(((void*)0), "ftp://localhost/foo", ((void*)0), ((void*)0));
    assert(f == ((void*)0));
    f = vlc_http_file_create(((void*)0), "/foo", ((void*)0), ((void*)0));
    assert(f == ((void*)0));
    f = vlc_http_file_create(((void*)0), "http://www.example.com", ((void*)0), ((void*)0));
    assert(f != ((void*)0));
    vlc_http_file_destroy(f);

    vlc_http_cookies_destroy(jar);
    return 0;
}
