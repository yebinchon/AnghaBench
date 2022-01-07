
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int W_CHAR ;


 int VP8_STATUS_NOT_ENOUGH_DATA ;
 int VP8_STATUS_OK ;
 int WFPRINTF (int ,char*,int const*) ;
 int fprintf (int ,char*,...) ;
 char** kStatusMessages ;
 int stderr ;

void PrintWebPError(const char* const in_file, int status) {
  WFPRINTF(stderr, "Decoding of %s failed.\n", (const W_CHAR*)in_file);
  fprintf(stderr, "Status: %d", status);
  if (status >= VP8_STATUS_OK && status <= VP8_STATUS_NOT_ENOUGH_DATA) {
    fprintf(stderr, "(%s)", kStatusMessages[status]);
  }
  fprintf(stderr, "\n");
}
