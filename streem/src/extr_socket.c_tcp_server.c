
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_data {int sock; } ;
struct addrinfo {int ai_addrlen; int ai_addr; scalar_t__ ai_protocol; int ai_socktype; int ai_family; struct addrinfo* ai_next; int ai_flags; } ;
typedef int strm_value ;
typedef int strm_string ;
typedef int strm_stream ;
typedef int sockopt ;
typedef int WSADATA ;


 int AF_INET ;
 int AF_UNSPEC ;
 int AI_PASSIVE ;
 int EAI_AGAIN ;
 int INVALID_SOCKET ;
 int MAKEWORD (int,int ) ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_OPENTYPE ;
 int SO_SYNCHRONOUS_NONALERT ;
 int STRM_NG ;
 int STRM_OK ;
 int WSAStartup (int ,int *) ;
 scalar_t__ bind (int,int ,int ) ;
 int closesocket (int) ;
 int freeaddrinfo (struct addrinfo*) ;
 char* gai_strerror (int) ;
 int getaddrinfo (int *,char const*,struct addrinfo*,struct addrinfo**) ;
 scalar_t__ listen (int,int) ;
 struct socket_data* malloc (int) ;
 int memset (struct addrinfo*,int ,int) ;
 int server_accept ;
 int server_close ;
 int setsockopt (int ,int ,int ,char*,int) ;
 int socket (int ,int ,scalar_t__) ;
 int sprintf (char*,char*,int) ;
 int strm_get_args (int *,int,int *,char*,int *) ;
 scalar_t__ strm_number_p (int ) ;
 int strm_producer ;
 int strm_raise (int *,char*) ;
 char* strm_str_cstr (int ,char*) ;
 int * strm_stream_new (int ,int ,int ,void*) ;
 int strm_stream_value (int *) ;
 scalar_t__ strm_value_int (int ) ;
 int strm_value_str (int ) ;

__attribute__((used)) static int
tcp_server(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct addrinfo hints;
  struct addrinfo *result, *rp;
  int sock, s;
  strm_value srv;
  const char *service;
  char buf[12];
  struct socket_data *sd;
  strm_stream *t;
  strm_get_args(strm, argc, args, "v", &srv);
  if (strm_number_p(srv)) {
    sprintf(buf, "%d", (int)strm_value_int(srv));
    service = buf;
  }
  else {
    strm_string str = strm_value_str(srv);
    service = strm_str_cstr(str, buf);
  }

  memset(&hints, 0, sizeof(struct addrinfo));



  hints.ai_family = AF_UNSPEC;

  hints.ai_socktype = SOCK_STREAM;
  hints.ai_flags = AI_PASSIVE;
  hints.ai_protocol = 0;

  for (;;) {
    s = getaddrinfo(((void*)0), service, &hints, &result);
    if (s != 0) {
      if (s == EAI_AGAIN) continue;
      strm_raise(strm, gai_strerror(s));
      return STRM_NG;
    }
    break;
  }

  for (rp = result; rp != ((void*)0); rp = rp->ai_next) {
    sock = socket(rp->ai_family, rp->ai_socktype, rp->ai_protocol);
    if (sock == -1) continue;

    if (bind(sock, rp->ai_addr, rp->ai_addrlen) == 0)
      break;
    closesocket(sock);
  }

  freeaddrinfo(result);
  if (rp == ((void*)0)) {
    strm_raise(strm, "socket error: bind");
    return STRM_NG;
  }

  if (listen(sock, 5) < 0) {
    closesocket(sock);
    strm_raise(strm, "socket error: listen");
    return STRM_NG;
  }

  sd = malloc(sizeof(struct socket_data));
  sd->sock = sock;
  t = strm_stream_new(strm_producer, server_accept, server_close, (void*)sd);
  *ret = strm_stream_value(t);
  return STRM_OK;
}
