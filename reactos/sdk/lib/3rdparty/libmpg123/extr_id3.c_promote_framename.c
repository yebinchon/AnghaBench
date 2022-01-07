
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int old ;
typedef int mpg123_handle ;


 scalar_t__ VERBOSE3 ;
 int fprintf (int ,char*,...) ;
 int memcpy (char*,char*,int) ;
 int stderr ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static int promote_framename(mpg123_handle *fr, char *id)
{
 size_t i;
 char *old[] =
 {
  "COM", "TAL", "TBP", "TCM", "TCO", "TCR", "TDA", "TDY", "TEN", "TFT",
  "TIM", "TKE", "TLA", "TLE", "TMT", "TOA", "TOF", "TOL", "TOR", "TOT",
  "TP1", "TP2", "TP3", "TP4", "TPA", "TPB", "TRC", "TDA", "TRK", "TSI",
  "TSS", "TT1", "TT2", "TT3", "TXT", "TXX", "TYE"
 };
 char *new[] =
 {
  "COMM", "TALB", "TBPM", "TCOM", "TCON", "TCOP", "TDAT", "TDLY", "TENC", "TFLT",
  "TIME", "TKEY", "TLAN", "TLEN", "TMED", "TOPE", "TOFN", "TOLY", "TORY", "TOAL",
  "TPE1", "TPE2", "TPE3", "TPE4", "TPOS", "TPUB", "TSRC", "TRDA", "TRCK", "TSIZ",
  "TSSE", "TIT1", "TIT2", "TIT3", "TEXT", "TXXX", "TYER"
 };
 for(i=0; i<sizeof(old)/sizeof(char*); ++i)
 {
  if(!strncmp(id, old[i], 3))
  {
   memcpy(id, new[i], 4);
   if(VERBOSE3) fprintf(stderr, "Translated ID3v2.2 frame %s to %s\n", old[i], new[i]);
   return 0;
  }
 }
 if(VERBOSE3) fprintf(stderr, "Ignoring untranslated ID3v2.2 frame %c%c%c\n", id[0], id[1], id[2]);
 return -1;
}
