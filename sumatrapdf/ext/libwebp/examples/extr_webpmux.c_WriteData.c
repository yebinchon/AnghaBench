
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ size; int bytes; } ;
typedef TYPE_1__ WebPData ;
typedef int W_CHAR ;
typedef int FILE ;


 int * ImgIoUtilSetBinaryMode (int *) ;
 int * WFOPEN (char const*,char*) ;
 int WFPRINTF (int ,char*,int const*,...) ;
 scalar_t__ WSTRCMP (char const*,char*) ;
 int fclose (int *) ;
 int fwrite (int ,scalar_t__,int,int *) ;
 int stderr ;
 int * stdout ;

__attribute__((used)) static int WriteData(const char* filename, const WebPData* const webpdata) {
  int ok = 0;
  FILE* fout = WSTRCMP(filename, "-") ? WFOPEN(filename, "wb")
                                      : ImgIoUtilSetBinaryMode(stdout);
  if (fout == ((void*)0)) {
    WFPRINTF(stderr, "Error opening output WebP file %s!\n",
             (const W_CHAR*)filename);
    return 0;
  }
  if (fwrite(webpdata->bytes, webpdata->size, 1, fout) != 1) {
    WFPRINTF(stderr, "Error writing file %s!\n", (const W_CHAR*)filename);
  } else {
    WFPRINTF(stderr, "Saved file %s (%d bytes)\n",
             (const W_CHAR*)filename, (int)webpdata->size);
    ok = 1;
  }
  if (fout != stdout) fclose(fout);
  return ok;
}
