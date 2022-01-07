
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_addrlen; int ai_addr; scalar_t__ ai_protocol; int ai_socktype; int ai_family; struct addrinfo* ai_next; } ;
typedef int strm_value ;
typedef int strm_string ;
typedef int strm_stream ;
typedef int WSADATA ;


 int AF_INET ;
 int AF_UNSPEC ;
 int MAKEWORD (int,int ) ;
 int SOCK_STREAM ;
 int STRM_IO_FLUSH ;
 int STRM_IO_READ ;
 int STRM_IO_WRITE ;
 int STRM_NG ;
 int STRM_OK ;
 int WSAStartup (int ,int *) ;
 int closesocket (int) ;
 int connect (int,int ,int ) ;
 int freeaddrinfo (struct addrinfo*) ;
 char* gai_strerror (int) ;
 int getaddrinfo (char*,char const*,struct addrinfo*,struct addrinfo**) ;
 int memset (struct addrinfo*,int ,int) ;
 int socket (int ,int ,scalar_t__) ;
 int sprintf (char*,char*,int) ;
 int strm_get_args (int *,int,int *,char*,int *,int *) ;
 int strm_io_new (int,int) ;
 scalar_t__ strm_number_p (int ) ;
 int strm_raise (int *,char*) ;
 char* strm_str_cstr (int ,char*) ;
 scalar_t__ strm_value_int (int ) ;
 int strm_value_str (int ) ;

__attribute__((used)) static int
tcp_socket(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct addrinfo hints;
  struct addrinfo *result, *rp;
  int sock, s;
  const char *service;
  char sbuf[12], hbuf[7];
  strm_string host;
  strm_value srv;






  strm_get_args(strm, argc, args, "Sv", &host, &srv);
  if (strm_number_p(srv)) {
    sprintf(sbuf, "%d", (int)strm_value_int(srv));
    service = sbuf;
  }
  else {
    strm_string str = strm_value_str(srv);
    service = strm_str_cstr(str, sbuf);
  }

  memset(&hints, 0, sizeof(struct addrinfo));



  hints.ai_family = AF_UNSPEC;

  hints.ai_socktype = SOCK_STREAM;
  hints.ai_protocol = 0;
  s = getaddrinfo(strm_str_cstr(host, hbuf), service, &hints, &result);

  if (s != 0) {
    strm_raise(strm, gai_strerror(s));
    return STRM_NG;
  }

  for (rp = result; rp != ((void*)0); rp = rp->ai_next) {
    sock = socket(rp->ai_family, rp->ai_socktype, rp->ai_protocol);
    if (sock == -1) continue;

    if (connect(sock, rp->ai_addr, rp->ai_addrlen) != -1)
      break;
    closesocket(sock);
  }

  freeaddrinfo(result);
  if (rp == ((void*)0)) {
    strm_raise(strm, "socket error: connect");
    return STRM_NG;
  }
  *ret = strm_io_new(sock, STRM_IO_READ|STRM_IO_WRITE|STRM_IO_FLUSH);
  return STRM_OK;
}
