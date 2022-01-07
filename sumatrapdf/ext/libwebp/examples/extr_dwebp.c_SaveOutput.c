
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WebPOutputFileFormat ;
typedef int WebPDecBuffer ;
typedef int W_CHAR ;
typedef int Stopwatch ;


 double StopwatchReadAndReset (int *) ;
 int StopwatchReset (int *) ;
 int WFPRINTF (int ,char*,int const*) ;
 int WSTRCMP (char const* const,char*) ;
 int WebPSaveImage (int const* const,int ,char const* const) ;
 int fprintf (int ,char*,...) ;
 int quiet ;
 int stderr ;
 scalar_t__ verbose ;

__attribute__((used)) static int SaveOutput(const WebPDecBuffer* const buffer,
                      WebPOutputFileFormat format, const char* const out_file) {
  const int use_stdout = (out_file != ((void*)0)) && !WSTRCMP(out_file, "-");
  int ok = 1;
  Stopwatch stop_watch;

  if (verbose) {
    StopwatchReset(&stop_watch);
  }
  ok = WebPSaveImage(buffer, format, out_file);

  if (ok) {
    if (!quiet) {
      if (use_stdout) {
        fprintf(stderr, "Saved to stdout\n");
      } else {
        WFPRINTF(stderr, "Saved file %s\n", (const W_CHAR*)out_file);
      }
    }
    if (verbose) {
      const double write_time = StopwatchReadAndReset(&stop_watch);
      fprintf(stderr, "Time to write output: %.3fs\n", write_time);
    }
  } else {
    if (use_stdout) {
      fprintf(stderr, "Error writing to stdout !!\n");
    } else {
      WFPRINTF(stderr, "Error writing file %s !!\n", (const W_CHAR*)out_file);
    }
  }
  return ok;
}
