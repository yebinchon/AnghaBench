
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curlstate {int accept_ranges; int content_length; } ;


 int DEBUG_MESSAGE (char*) ;
 int fz_atoi (char*) ;
 int lock (struct curlstate*) ;
 scalar_t__ strncmp (void*,char*,int) ;
 int unlock (struct curlstate*) ;

__attribute__((used)) static size_t on_curl_header(void *ptr, size_t size, size_t nmemb, void *state_)
{
 struct curlstate *state = state_;

 lock(state);
 if (strncmp(ptr, "Accept-Ranges: bytes", 20) == 0)
 {
  DEBUG_MESSAGE(("header arrived with Accept-Ranges!\n"));
  state->accept_ranges = 1;
 }

 if (strncmp(ptr, "Content-Length:", 15) == 0)
 {
  char *s = ptr;
  state->content_length = fz_atoi(s + 15);
  DEBUG_MESSAGE(("header arrived with Content-Length: %d\n", state->content_length));
 }
 unlock(state);

 return nmemb * size;
}
