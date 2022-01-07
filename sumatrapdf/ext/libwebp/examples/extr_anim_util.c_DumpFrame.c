
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef char W_CHAR ;
typedef int FILE ;


 scalar_t__ TO_W_CHAR (char*) ;
 int * WFOPEN (char*,char*) ;
 int WFPRINTF (int ,char*,char*) ;
 scalar_t__ WSNPRINTF (char*,size_t,char*,char const*,char const*,int ) ;
 int WSTRLEN (char const*) ;
 char* WSTRRCHR (char const*,char) ;
 int WebPFree (char*) ;
 scalar_t__ WebPMalloc (size_t) ;
 int fclose (int *) ;
 scalar_t__ fprintf (int *,char*,...) ;
 int fwrite (char const*,int,int,int *) ;
 int kNumChannels ;
 int stderr ;
 int strlen (char*) ;

__attribute__((used)) static int DumpFrame(const char filename[], const char dump_folder[],
                     uint32_t frame_num, const uint8_t rgba[],
                     int canvas_width, int canvas_height) {
  int ok = 0;
  size_t max_len;
  int y;
  const W_CHAR* base_name = ((void*)0);
  W_CHAR* file_name = ((void*)0);
  FILE* f = ((void*)0);
  const char* row;

  if (dump_folder == ((void*)0)) dump_folder = (const char*)TO_W_CHAR(".");

  base_name = WSTRRCHR(filename, '/');
  base_name = (base_name == ((void*)0)) ? (const W_CHAR*)filename : base_name + 1;
  max_len = WSTRLEN(dump_folder) + 1 + WSTRLEN(base_name)
          + strlen("_frame_") + strlen(".pam") + 8;
  file_name = (W_CHAR*)WebPMalloc(max_len * sizeof(*file_name));
  if (file_name == ((void*)0)) goto End;

  if (WSNPRINTF(file_name, max_len, "%s/%s_frame_%d.pam",
                (const W_CHAR*)dump_folder, base_name, frame_num) < 0) {
    fprintf(stderr, "Error while generating file name\n");
    goto End;
  }

  f = WFOPEN(file_name, "wb");
  if (f == ((void*)0)) {
    WFPRINTF(stderr, "Error opening file for writing: %s\n", file_name);
    ok = 0;
    goto End;
  }
  if (fprintf(f, "P7\nWIDTH %d\nHEIGHT %d\n"
              "DEPTH 4\nMAXVAL 255\nTUPLTYPE RGB_ALPHA\nENDHDR\n",
              canvas_width, canvas_height) < 0) {
    WFPRINTF(stderr, "Write error for file %s\n", file_name);
    goto End;
  }
  row = (const char*)rgba;
  for (y = 0; y < canvas_height; ++y) {
    if (fwrite(row, canvas_width * kNumChannels, 1, f) != 1) {
      WFPRINTF(stderr, "Error writing to file: %s\n", file_name);
      goto End;
    }
    row += canvas_width * kNumChannels;
  }
  ok = 1;
 End:
  if (f != ((void*)0)) fclose(f);
  WebPFree(file_name);
  return ok;
}
